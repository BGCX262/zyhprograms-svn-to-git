var a,b,c,d,h,n,m:longint;
x:array [1..1000] of integer;
begin
readln(n,m);
for a:=1 to n do
x[a]:=a;
c:=1;
while m<>b do
begin
b:=b+1;
h:=b*b*b mod 5+1;
if c+h<=n then
begin
c:=c+h;
if m=b then d:=x[c];
for a:=c to n do
x[a]:=x[a+1];
n:=n-1;
end else
begin
c:=1+h;
if m=b then d:=x[c];
for a:=c to n do
x[a]:=x[a+1];
n:=n-1;
end;
end;
writeln(d);
end.