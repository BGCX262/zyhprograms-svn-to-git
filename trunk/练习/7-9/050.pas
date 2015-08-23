var n,i,s,max,j:longint;
a:array[1..10000]of longint;
begin
readln(n);
for i:=1 to n do read(a[i]);
for i:=1 to n do
begin
s:=0;
for j:=i to i+2 do
s:=s+a[j];
if max<s then max:=s;
end;
writeln(max);
end.