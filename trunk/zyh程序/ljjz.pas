var f,c:array[0..1000]of integer;
a:array[1..100,1..100]of integer;
n,i,j,x:integer;
begin
assign(input,'ljjz.in');
assign(output,'ljjz.out');
reset(input);
rewrite(output);
readln(n);
for i:=1 to n do
for j:=1 to n do
read(a[i,j]);
for i:=1 to n do
f[i]:=maxint;
f[n]:=0;
for i:=n-1 downto 1 do
for j:=i+1 to n do
if (a[i,j]>0)and(f[j]<>maxint)and(f[i]>a[i,j]+f[j]) then
begin
f[i]:=a[i,j]+f[j];
c[i]:=j;
end;
writeln('minlong=',f[1]);
x:=1;
while x<>0 do
begin
write(x:5);
x:=c[x];
end;
close(input);
close(output);
end.
