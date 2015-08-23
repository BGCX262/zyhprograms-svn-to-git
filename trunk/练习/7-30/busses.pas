var
f:array[0..100] of integer;
a:array[1..10] of integer;
s,i,j,min:integer;
begin
assign(input,'busses.in');
assign(output,'busses.out');
reset(input);
rewrite(output);
for i:=1 to 10 do
read(a[i]);
readln(s);
for i:=1 to s do
begin
min:=maxint;
if i<10 then
begin
for j:=1 to i do
if f[i-j]+a[j]<min then
min:=f[i-j]+a[j];
end
else
begin
for j:=1 to 10 do
if f[i-j]+a[j]<min then
min:=f[i-j]+a[j];
end;
f[i]:=min;
end;
writeln(f[s]);
close(input);
close(output);
end.

