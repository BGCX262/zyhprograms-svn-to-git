var f:array[0..50,0..50,0..50,0..50]of longint;
  a:array[0..50,0..50]of longint;
  i,j,k,l,n,m:longint;
begin
  readln(n,m);
  for i:=1 to n do
    for j:=1 to m do read(a[i,j]);
  for i:=1 to n do
    for j:=1 to m do
      for k:=1 to n do
        for l:=1 to m do
        begin
          if f[i,j,k,l]<f[i-1,j,k-1,l] then f[i,j,k,l]:=f[i-1,j,k-1,l];
          if f[i,j,k,l]<f[i-1,j,k,l-1] then f[i,j,k,l]:=f[i-1,j,k,l-1];
          if f[i,j,k,l]<f[i,j-1,k-1,l] then f[i,j,k,l]:=f[i,j-1,k-1,l];
          if f[i,j,k,l]<f[i,j-1,k,l-1] then f[i,j,k,l]:=f[i,j-1,k,l-1];
          if (i=k)and(j=l) then f[i,j,k,l]:=f[i,j,k,l]+a[i,j]
          else f[i,j,k,l]:=f[i,j,k,l]+a[i,j]+a[k,l];
        end;
  writeln(f[n,m,n,m]);
end.
