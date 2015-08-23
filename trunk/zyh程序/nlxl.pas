
var i,j,k,t,n,max,temp:longint;
a:array[1..201]of longint;
f:array[1..201,1..201]of longint;
begin
readln(n);
for i:=1 to n do
begin
read(a[i]);
a[i+n]:=a[i];
end;
for i:=1 to 2*n-2 do
f[i,i+1]:=a[i]*a[i+1]*a[i+2];
for t:=2 to n-1 do
for i:=1 to 2*n-t-1 do
begin
max:=0;
j:=i+t;
for k:=i to j-1 do
begin
temp:=f[i,k]+f[k+1,j]+a[i]*a[k+1]*a[j+1];
if temp>max then max:=temp;
end;
f[i,j]:=max;
end;
max:=0;
for i:=1 to n do
if f[i,n+i-1]>max then max:=f[i,n+i-1];
writeln(max);
end. 