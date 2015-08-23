var a:array[1..1000]of longint;
n,i,j,k,sum:longint;
begin
readln(n);
for i:= 1 to n do
read(a[i]);
for i:=n-1 downto 1 do
for j:=1 to i do
a[j]:=a[j+1]-a[j];
for i:=1 to n do
sum:=sum+a[i];
writeln(sum);
end.