var f:array[0..40,0..40]of longint;
a:array[1..40]of longint;
i,j,k,n,m:longint;
st:string;
function yz(x,y:longint):longint;
var i:longint;
begin
val(copy(st,x,y-x+1),yz);
end;
begin
readln(n,m);
readln(st);
for i:=1 to n do a[i]:=ord(st[i])-48;
for i:=1 to n do f[i,1]:=yz(1,i);
for i:=2 to m+1 do
for j:=i to n do
for k:=j-1 downto 1 do
if f[k,i-1]*yz(k+1,j)>f[j,i] then f[j,i]:=f[k,i-1]*yz(k+1,j);
writeln(f[n,m+1]);
end.