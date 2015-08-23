program Vijos_P1154;
var
f:array[1..10,1..1000,1..1000] of longint;
n,k,count,last,max,i,total:longint;
begin
readln(n);
k:=trunc(ln(n)/ln(2))+1;
fillchar(f,sizeof(f),0);
f[1,1,1]:=1;
for count:=1 to k-1 do
for last:=count to 1 shl (count-1) do
for max:=count to 1 shl count-1 do
if f[count,last,max]>0 then
for i:=last+1 to max+1 do
if max+i<=n then
inc(f[count+1,i,max+i],f[count,last,max])
else
inc(f[count+1,i,n],f[count,last,max]);
total:=0;
for i:=1 to n do
total:=total+f[k,i,n];
writeln(k,' ',total);
end.
