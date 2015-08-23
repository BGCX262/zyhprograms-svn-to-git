var f:array[0..10,0..10,0..10,0..10]of longint;
  a:array[0..10,0..10]of longint;
  i1,j1,i2,j2,n:longint;
begin
  readln(n);
  readln(i1,j1,i2);
  while not((i1=0)and(j1=0)and(i2=0)) do begin
    a[i1,j1]:=i2;
    readln(i1,j1,i2);
  end;
  for i1:=1 to n do
    for j1:=1 to n do
      for i2:=1 to n do
        for j2:=1 to n do
        begin
          if f[i1-1,j1,i2-1,j2]>f[i1,j1,i2,j2] then f[i1,j1,i2,j2]:=f[i1-1,j1,i2-1,j2];
          if f[i1-1,j1,i2,j2-1]>f[i1,j1,i2,j2] then f[i1,j1,i2,j2]:=f[i1-1,j1,i2,j2-1];
          if f[i1,j1-1,i2-1,j2]>f[i1,j1,i2,j2] then f[i1,j1,i2,j2]:=f[i1,j1-1,i2-1,j2];
          if f[i1,j1-1,i2,j2-1]>f[i1,j1,i2,j2] then f[i1,j1,i2,j2]:=f[i1,j1-1,i2,j2-1];
          f[i1,j1,i2,j2]:=f[i1,j1,i2,j2]+a[i1,j1];
          if (i1<>i2) or (j1<>j2) then f[i1,j1,i2,j2]:=f[i1,j1,i2,j2]+a[i2,j2];
        end;
  writeln(f[n,n,n,n]);
end.
