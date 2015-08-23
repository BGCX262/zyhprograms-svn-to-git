var a:array[1..1000]of longint;
  f,w:array[0..1000,0..1000]of longint;
  i,j,n,m,k,q:longint;
begin
  readln(n,m);
  for i:=1 to n do read(a[i]);
  for i:=1 to n do
  for j:=1 to n do
  begin
    k:=a[(i+j)div 2];
    for q:=i to j do w[i,j]:=w[i,j]+abs(k-a[q]);
  end;
  for i:=1 to n do f[i,1]:=w[1,i];
  for j:=2 to m do
  for i:=j to n-m+j do
  begin
    f[i,j]:=maxlongint;
    for k:=j-1 to i-1 do
      if f[i,j]>f[k,j-1]+w[k+1,i] then
        f[i,j]:=f[k,j-1]+w[k+1,i];
  end;
  writeln(f[n,m]);
end.
