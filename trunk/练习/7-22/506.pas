uses math;
var a:array[1..200,1..200]of longint;
i,j,n:longint;
begin
readln(n);
for i:=1 to n do begin
for j:=1 to i do
read(a[i,j]);
readln;
end;
for i:=n-1 downto 1 do
for j:=1 to i do
a[i,j]:=max(a[i,j]+a[i+1,j],a[i,j]+a[i+1,j+1]);
writeln(a[1,1]);
end.