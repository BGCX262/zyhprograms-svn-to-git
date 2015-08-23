var a:array[1..100]of longint;
n,i,j,k,t,s:longint;
begin
assign(input,'random.in');
assign(output,'random.out');
reset(input);
rewrite(output);
readln(n);
for i:=1 to n do read(a[i]);
for i:=1 to n-1 do
for j:=i+1 to n do
if a[i]>a[j] then begin
t:=a[i];
a[i]:=a[j];
a[j]:=t;
end;
for i:=2 to n do
if a[i]=abs(a[i-1]) then a[i]:=-a[i]
else inc(s);
writeln(s+1);
for i:=1 to n-1 do
if a[i]>0 then
write(a[i],' ');
write(a[n]);
close(input);
close(output);
end.
