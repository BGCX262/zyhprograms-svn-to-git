var s:real;
n,i,j,t:longint;
b,a:array[1..10000]of longint;
begin
assign(input,'water.in');
assign(output,'water.out');
reset(input);
rewrite(output);
readln(n);
for i:=1 to n do begin
read(a[i]);
b[i]:=i;
end;
for i:=1 to n-1 do
for j:=i+1 to n do
if a[i]>a[j] then begin
t:=a[i];
a[i]:=a[j];
a[j]:=t;
t:=b[i];
b[i]:=b[j];
b[j]:=t;
end;
for i:=1 to n do write(b[i],' ');
writeln;
for i:=1 to n do
for j:=1 to i do
s:=s+a[j];
writeln(s/n:0:2);
close(input);
close(output);
end.

