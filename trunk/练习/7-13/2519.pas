var x,y,i,n,j:longint;
s,s1,s2:real;
begin
readln(n);
for i:=1 to n do
begin
readln(x,y);
s:=1;s1:=1;s2:=1;
for j:=2 to x do
s:=s*j;
for j:=2 to y do
s1:=s1*j;
for j:=2 to x-y do
s2:=s2*j;
writeln(s/(s1*s2):0:0);
s:=1;s1:=1;s2:=1;
end;
end.

