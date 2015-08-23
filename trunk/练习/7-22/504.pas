uses math;
var c,b,a:array[1..10000]of longint;
n,i,l,min1,max1:longint;
begin
readln(l);
readln(n);
for i:=1 to n do read(a[i]);
for i:=1 to n do begin
b[i]:=min(a[i]+1,l+1-a[i]);
c[i]:=max(a[i]+1,l+1-a[i]);
end;
min1:=maxlongint;
for i:=1 to n do
begin
if min1>b[i] then min1:=b[i];
if max1<c[i] then max1:=c[i];
end;
writeln(min1,' ',max1);
end.