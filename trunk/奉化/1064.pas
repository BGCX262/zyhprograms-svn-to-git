var q:real;
i,j,b,s,n:longint;
begin
readln(n);
for i:=1 to n do
for j:=i to n-i do
begin
q:=sqrt(i*i+j*j);
b:=trunc(q);
if (q=b)and(i+j>b)and(i+b>j)and(j+b>i)and(b<=n-i-j) then inc(s);
end;
writeln(s);
end.

