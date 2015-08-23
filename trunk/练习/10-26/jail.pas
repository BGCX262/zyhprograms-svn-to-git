var i,j,k,n,d,max,s:longint;
a:array[1..1000000,1..5]of longint;
begin
assign(input,'jail.in');
assign(output,'jail.out');
reset(input);
rewrite(output);
readln(n,d);
for i:=1 to n do
for j:=1 to d do
read(a[i,j]);
for i:=1 to n-1 do
for j:=i+1 to n do
begin
s:=0;
for k:=1 to d do
s:=s+abs(a[i,k]-a[j,k]);
if max<s then max:=s;
end;
writeln(max);
close(input);
close(output);
end.
