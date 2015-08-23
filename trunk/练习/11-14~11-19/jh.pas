var
  max,z,step,i,j,n:longint;
  p,l,x:packed array[1..200]of longint;
  t,v,a:packed array[1..200,1..200]of longint;
  w:packed array[1..200]of boolean;
begin
  readln(step,n);
  for i:=1 to n do
  begin
    readln(p[i],l[i],x[i]);
    for j:=1 to x[i] do readln(t[i,j],v[i,j]);
  end;
  for i:=1 to n+1 do
    for j:=1 to n+1 do
      a[i,j]:=1000000000;
  for i:=1 to n do
  begin
    a[i,n+1]:=p[i];
    for j:=1 to x[i] do
       if abs(l[t[i,j]]-l[i])<=step then a[i,t[i,j]]:=v[i,j];
  end;
  w[1]:=true;
  for j:=2 to n+1 do
  begin
    max:=2147483647;
    for i:=1 to n+1 do
      if not w[i] and (a[1,i]<max) then
      begin
        max:=a[1,i];
        z:=i;
      end;
    w[z]:=true;
    for i:=1 to n+1 do
    if a[1,i]>a[1,z]+a[z,i] then a[1,i]:=a[1,z]+a[z,i];
  end;
  writeln(a[1,n+1]);
end.

