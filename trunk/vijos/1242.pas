var f:array[0..300,0..300]of longint;
  b:array[1..300,1..300]of longint;
  a:array[1..300]of longint;
  n,m,i,j,t,k,min:longint;
begin
  readln(n,m);
  for i:=1 to n do read(a[i]);
  for i:=1 to n-1 do
    for j:=i+1 to n do begin
      t:=(i+j)div 2;
      for k:=i to j do b[i,j]:=b[i,j]+abs(a[t]-a[k]);
    end;
  fillchar(f,sizeof(f),0);
  for i:=1 to n do f[i,1]:=b[1,i];
  for i:=1 to n do
    for j:=2 to m do
    if i>=j then begin
      f[i,j]:=maxlongint;
      for k:=1 to i-1 do
        if f[i,j]>f[k,j-1]+b[k+1,i] then f[i,j]:=f[k,j-1]+b[k+1,i];
    end;
  writeln(f[n,m]);
end.
