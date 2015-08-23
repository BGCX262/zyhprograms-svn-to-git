const d:array[0..8] of longint=(0,9,189,2889,38889,488889,5888889,68888889,788888889);
var i,k,n,m:longint;
begin
readln(n);
for i:=1 to 8 do
if n<=d[i] then
begin
k:=i;
break;
end;
n:=n-d[i-1];
m:=1;
for i:=1 to k-1 do
m:=m*10;
m:=m+(n-1) div k;
n:=(n-1) mod k+1;
for i:=1 to k-n do
m:=m div 10;
writeln(m mod 10);
end. 

