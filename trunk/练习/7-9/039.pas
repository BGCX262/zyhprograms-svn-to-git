var a:array[1..100]of integer;
i,j,n,s,t,x:integer;
begin
read(n);
for i:=1 to n do read(a[i]);
for i:=1 to n-1 do
for j:=i+1 to n do
if a[i]>a[j] then
begin
t:=a[i];
a[i]:=a[j];
a[j]:=t;
end;i:=1;
while x+s<n do begin
x:=x+s;i:=i+s;s:=0;
write(a[i],' ');
for j:=i to n do if a[j]=a[i] then s:=s+1;
writeln(s);
end;
end.
