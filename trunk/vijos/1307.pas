var n,i:longint;
  s:qword;
begin
  readln(n);
  for i:=1 to n do s:=s+sqr(i);
  writeln(s);
end.