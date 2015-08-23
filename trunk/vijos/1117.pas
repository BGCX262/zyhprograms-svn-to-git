var i,j,n,m:longint;
  f:array[0..205,0..60]of qword;
begin
  readln(n,m);
  f[1,1]:=1;
  for i:=2 to n do
    for j:=1 to m do
    if i>=j then
      f[i,j]:=f[i-1,j-1]+f[i-j,j];
  writeln(f[n,m]);
end.
