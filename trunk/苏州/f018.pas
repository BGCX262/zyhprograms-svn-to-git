var st:string;
  s:array[1..300]of char;
  j,i:longint;
  t,zm,fh,kh:boolean;
begin
  readln(st);
  while i<length(st) do
  begin
    inc(i);
    if (st[i]='(') then begin
      inc(j);s[j]:=st[i];
    end;
    if (st[i]=')') then
      if j=0 then begin
        writeln('Error 2');
        halt;
      end
      else begin
        case st[i] of
          ')':t:=s[j]='(';
        end;
        if t then dec(j)
        else begin
          writeln('Error 2');
          halt;
        end;
      end;
  end;
  if j>0 then begin
    writeln('Error 2');
    halt;
  end;
  i:=0;
  zm:=false;
  fh:=false;
  kh:=false;
  while i<length(st) do begin
    inc(i);
    if kh then begin
      if st[i]in['a'..'c'] then begin
        zm:=true;
        kh:=false;
      end
      else if (st[i-1]='(')and((st[i]='+')or(st[i]='-')or(st[i]='*')or(st[i]='/')) then begin
        writeln('Error 3');
        halt;
      end
      else if (st[i-1]=')')and((st[i]='+')or(st[i]='-')or(st[i]='*')or(st[i]='/')) then begin
        kh:=true;
        fh:=false;
      end
      else if (st[i]='(')or(st[i]=')') then kh:=true
      else begin
        writeln('Error 1');
        halt;
      end;
    end else
    if zm then begin
      if st[i]in['a'..'c'] then begin
        writeln('Error 3');
        halt;
      end
      else if (st[i]='+')or(st[i]='-')or(st[i]='*')or(st[i]='/') then begin
        zm:=false;
        fh:=true;
        kh:=false;
      end
      else if (st[i]='(') then begin
        writeln('Error 3');
        halt;
      end
      else if (st[i]=')') then
      else begin
        writeln('Error 1');
        halt;
      end;end
      else
    if fh then
      if (st[i]='+')or(st[i]='-')or(st[i]='*')or(st[i]='/') then begin
        writeln('Error 3');
        halt;
      end
      else if st[i]in['a'..'c'] then begin
        zm:=true;
        fh:=false;
        kh:=false;
      end
      else if (st[i]='(')and(st[i]=')') then begin
        zm:=false;
        kh:=true;
        fh:=false;
      end
      else begin
        writeln('Error 1');
        halt;
      end;
    if (not(zm))and(not(fh))and(not(kh)) then
      if (st[i]='+')or(st[i]='-')or(st[i]='*')or(st[i]='/') then fh:=true
      else if (st[i]in['a'..'c']) then zm:=true
      else if (st[i]='(')or(st[i]=')') then kh:=true
      else begin
        writeln('Error 1');
        halt;
      end;
  end;
  writeln('Ok');
end.
