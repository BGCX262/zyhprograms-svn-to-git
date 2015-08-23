var n:int64;
s:string;
a:integer;
b:char;
function power(a,b:longint):int64;
var c:longint;
begin
power:=1;
for c:=1 to b do
power:=power*a;
end;
begin
read(n);
s:=binstr(n,32);
for a:=1 to 16 do
begin
b:=s[a];
s[a]:=s[16+a];
s[16+a]:=b;
end;
n:=0;
for a:=32 downto 1 do
begin
if s[a]='1' then
n:=n+power(2,32-a);
end;
write(n);
end.