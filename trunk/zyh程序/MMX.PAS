program aasd;
var n,s,a,i:longint;
begin
read(n);
i:=0;
a:=-1;
while i<=n do
begin
repeat
inc(i);
s:=sqr(i) mod n;
if i>n-1 then exit;
until s=1;
write(i:10);
inc(a);
end;
if a=0 then write('None');
end.