var f:array[0..10,0..10,0..10,0..10]of longint;
a:array[1..10,1..10]of longint;
n,x,z,y,i1,i2,j1,j2:longint;
begin
  readln(n);
  readln(x,y,z);
  while not((x=0)and(y=0)and(z=0)) do begin
    a[x,y]:=z;
    readln(x,y,z);
  end;
  for i1:=1 to n do
    for j1:=1 to n do
      for i2:=1 to n do
        for j2:=1 to n do
        begin
          if f[i1,j1,i2,j2]<f[i1-1,j1,i2-1,j2] then f[i1,j1,i2,j2]:=f[i1-1,j1,i2-1,j2];
          if f[i1,j1,i2,j2]<f[i1,j1-1,i2,j2-1] then f[i1,j1,i2,j2]:=f[i1,j1-1,i2,j2-1];
          if f[i1,j1,i2,j2]<f[i1-1,j1,i2,j2-1] then f[i1,j1,i2,j2]:=f[i1-1,j1,i2,j2-1];
          if f[i1,j1,i2,j2]<f[i1,j1-1,i2-1,j2] then f[i1,j1,i2,j2]:=f[i1,j1-1,i2-1,j2];
          f[i1,j1,i2,j2]:=f[i1,j1,i2,j2]+a[i1,j1];
          if (i1<>i2)or(j1<>j2) then f[i1,j1,i2,j2]:=f[i1,j1,i2,j2]+a[i2,j2];
        end;
  writeln(f[n,n,n,n]);
end.