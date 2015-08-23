var i,j,k,m,n,max,s:integer;
a:array[1..100,1..100]of integer;
begin
read(n,m);
for i:=1 to n do
for j:=1 to m do
read(a[i,j]);
for i:=1 to n do
for j:=1 to m do
begin
s:=0;
for k:=1 to m do
if a[i,k]=1 then inc(s);
for k:=1 to n do
if a[k,j]=1 then inc(s);
if max<s then max:=s;
end;
write(max);
end.
