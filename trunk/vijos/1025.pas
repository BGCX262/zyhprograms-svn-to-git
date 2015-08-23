var f:array[0..100,0..1000]of longint;
  a,b:array[1..100]of longint;
  i,j,n,m:longint;
function max(x,y:longint):longint;
begin
  if x>y then max:=x
  else max:=y;
end;
begin
  readln(n);
  readln(m);
  for i:=1 to n do readln(a[i],b[i]);
  for i:=1 to n do
    for j:=0 to m do
      if j>=b[i] then f[i,j]:=max(f[i-1,j],f[i-1,j-b[i]]+a[i])
      else f[i,j]:=f[i-1,j];
  writeln(f[n,m]);
end.