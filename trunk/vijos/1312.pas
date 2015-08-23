var a:array[1..100]of longint;
  f:array[0..100,0..100]of longint;
  i,j,k,n,max1:longint;
function min(x,y:longint):longint;
begin
  if x<y then min:=x
  else min:=y;
end;
function max(x,y:longint):longint;
begin
  if x>y then max:=x
  else max:=y;
end;
begin
  readln(n);
  for i:=1 to n do read(a[i]);
  for i:=1 to n do a[i+n]:=a[i];
  for i:=2*n-2 downto 1 do begin
    f[i,i+1]:=a[i]*a[i+1]*a[i+2];
    for j:=i+2 to min(i+n-1,2*n) do
      for k:=i to j-1 do
        f[i,j]:=max(f[i,j],f[i,k]+f[k+1,j]+a[i]*a[j+1]*a[k+1]);
  end;
  for i:=1 to n do
    if max1<f[i,i+n-1] then max1:=f[i,i+n-1];
  writeln(max1);
end.