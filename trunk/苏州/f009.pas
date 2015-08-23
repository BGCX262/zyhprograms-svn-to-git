var st:string;
  i,j,s:longint;
  ch1,ch2,ch:char;
begin
  readln(st);
  read(ch);
  case ch of
    'D':begin
      read(ch1,ch1);
      if pos(ch1,st)<>0 then delete(st,pos(ch1,st),1)
      else begin
        writeln('No');
        halt;
      end;
    end;
    'I':begin
      read(ch1,ch1,ch2,ch2);
      for i:=1 to length(st) do
        if st[i]=ch1 then j:=i;
      if j<>0 then insert(ch2,st,j)
      else begin
        writeln('No');
        halt;
      end;
    end;
    'R':begin
      read(ch1,ch1,ch2,ch2);
      for i:=1 to length(st) do
        if st[i]=ch1 then begin
          inc(s);
          st[i]:=ch2;
        end;
      if s=0 then begin
        writeln('No');
        halt;
      end;
    end;
  end;
  writeln(st);
end.