var n,m,t:longint;
function gcd(n,m:longint):longint;
var r:longint;
begin
r:=n mod m;
if r=0 then gcd:=m
else gcd:=gcd(m,r);
end;
begin
assign(input,'gcdmax.in');
assign(output,'gcdmax.out');
reset(input);
rewrite(output);
readln(n,m);
if n<m then begin t:=n;
n:=m;
m:=t;
end;
writeln('gcd=',gcd(n,m));
close(input);
close(output);
end.
