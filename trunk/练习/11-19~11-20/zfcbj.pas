var ch,ch1:char;
  st:string;
  f:boolean;
  i,j:longint;
begin
  readln(st);
  while not eoln do begin
    read(ch);
    ch:=upcase(ch);
    case ch of
      'D':begin
        read(ch,ch);
        f:=false;
        for i:=1 to length(st) do
          if ch=st[i] then begin
            f:=true;
            j:=i;
            break;
          end;
        if f then delete(st,j,1)
             else begin
               writeln('No such character!');
               halt;
             end;
      end;
      'I':begin
        read(ch,ch,ch1,ch1);
        f:=false;
        for i:=1 to length(st) do
          if ch=st[i] then begin
            f:=true;
            j:=i;
          end;
        if f then insert(ch1,st,j)
             else begin
               writeln('No such character!');
               halt;
             end;
      end;
      'R':begin
        read(ch,ch,ch1,ch1);
        f:=false;
        for i:=1 to length(st) do
          if ch=st[i] then begin
            f:=true;
            st[i]:=ch1;
          end;
        if not f then begin
          writeln('No such character!');
          halt;
        end;
      end;
    end;
  end;
  writeln(st);
end.
