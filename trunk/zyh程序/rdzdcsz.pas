var
a:array[1..100,1..100] of real;
i,n:integer;
r,s:real;
begin
readln(n,r);
for i:=1 to n do
readln(a[i,1],a[i,2]);
s:=0;
for i:=2 to n do
s:=s+sqrt(sqr(a[i,1]-a[i-1,1])+sqr(a[i,2]-a[i-1,2]));
s:=s+sqrt(sqr(a[n,1]-a[1,1])+sqr(a[n,2]-a[1,2]));
s:=s+3.1415926*r*2;
writeln(s:0:2);
end.
