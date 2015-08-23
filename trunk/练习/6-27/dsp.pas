var a:array[1..10000]of integer;
max,i,j,s,n:longint;
begin
readln(n);
for i:=1 to n do read(a[i]);
for i:=1 to n do
begin
s:=a[i];
for j:=i+1 to n do  begin
s:=s+a[j];
if max<s then max:=s;
end;
end;
writeln(max);
end.