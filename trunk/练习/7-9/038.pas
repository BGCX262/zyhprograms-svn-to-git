var
function max(d,b,c:longint):longint;
var max1:longint;
begin
max:=0;max1:=0;
if (d<>b) then

begin
readln(n,v,k);
for i:=1 to n-1 do read(a[i]);
f[n]:=v;
for i:=n-1 downto 2 do
f[i]:=max(f[i+1],f[i],f[i-1]);
for i:=2 to n do s:=s+f[i];
writeln(s/(n-1):0:2);
end.