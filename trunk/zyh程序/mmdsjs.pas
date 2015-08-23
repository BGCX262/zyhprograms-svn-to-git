program sd;
var n,i,j,s,t:longint;
a:array[1..10000] of longint;
begin
read(n);
for i:=1 to n do
read(a[i]);
for i:=1 to n-1 do
for j:=i+1 to n do
begin
if a[i]>a[j] then begin t:=a[i];a[i]:=a[j];a[j]:=t;end;
if a[i]=a[j] then a[i]:=0;
end;
for i:=1 to n do
if a[i]<>0 then s:=s+1;
writeln(s);
for i:=1 to n do
if a[i]<>0 then write(a[i],' ');
end.
