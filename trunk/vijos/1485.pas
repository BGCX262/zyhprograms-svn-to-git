var f:array[0..30,0..30]of qword;
  i,j,n,m:longint;
function l(j:longint):longint;
begin
  if j=1 then l:=n
  else l:=j-1;
end;
function r(j:longint):longint;
begin
  if j=n then r:=1
  else r:=j+1;
end;
begin
  readln(n,m);
  f[0,1]:=1;
  for i:=1 to m do
    for j:=1 to n do
      f[i,j]:=f[i-1,l(j)]+f[i-1,r(j)];
  writeln(f[m,1]);
end.