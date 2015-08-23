var a,b,c:array[1..50]of longint;
  f:array[0..50,0..400,0..400]of longint;
  n,m,v,i,j,k:longint;
function max(x,y:longint):longint;
begin
  if x>y then max:=x
  else max:=y;
end;
begin
  readln(v,m);
  readln(n);
  for i:=1 to n do readln(a[i],b[i],c[i]);
  for i:=1 to n do
    for j:=0 to v do
      for k:=0 to m do
        if (j>=a[i])and(k>=b[i]) then f[i,j,k]:=max(f[i-1,j,k],f[i-1,j-a[i],k-b[i]]+c[i])
                                 else f[i,j,k]:=f[i-1,j,k];
  writeln(f[n,v,m]);
end.