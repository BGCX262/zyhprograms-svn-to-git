var n,m,i,s,j:longint;
function gcd(n,m:longint):longint;
var r:longint;
begin
r:=n mod m;
if r=0 then gcd:=m
else gcd:=gcd(m,r);
end;
begin
readln(n,m);
if not((gcd(n,m)=n)and(n*m div gcd(n,m)=m)) then begin
writeln(0);
halt;
end;
for i:=n+1 to m-1 do
for j:=i+1 to m do
if (i<>j) then
if (gcd(i,j)=n)and(i*j div gcd(i,j)=m) then inc(s);
writeln(s*2+2);
end.
