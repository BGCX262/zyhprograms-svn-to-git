var s,n,i,j,s1:longint;
begin
readln(n);
if n mod 3<>0 then s:=n div 3+1
else s:=n div 3;
for i:=s to n div 2+(n mod 2-1) do
for j:=(n-i)div 2+(n-i) mod 2 to i do
if (n-i)>i then inc(s1);
writeln(s1);
end.

