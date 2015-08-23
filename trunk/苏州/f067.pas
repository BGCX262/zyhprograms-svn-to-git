var a:array[1..10000,1..3]of longint;
  n,i,max,max1,j:longint;
begin
  readln(n);
  for i:=1 to n do begin
    read(a[i,1]);
    a[i,2]:=1;
    a[i,3]:=1;
  end;
  for i:=1 to n do
    for j:=1 to i-1 do
      if (a[i,1]>a[j,1])and(a[j,2]+1>a[i,2]) then a[i,2]:=a[j,2]+1;
  for i:=n downto 1 do
    for j:=n downto i+1 do
      if (a[i,1]>a[j,1])and(a[j,3]+1>a[i,3]) then a[i,3]:=a[j,3]+1;
  for i:=1 to n do
    if a[i,3]+a[i,2]>max then max:=a[i,3]+a[i,2];
  writeln(n-max+1);
end.
