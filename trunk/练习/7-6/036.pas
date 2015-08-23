var n,m,s,i,j,k:longint;
a,b:array[1..100]of integer;
begin
read(n,m);
while n<>0 do
begin
i:=i+1;
a[i]:=n mod 10;
n:=n div 10;
end;
while m<>0 do
begin
j:=j+1;
b[j]:=m mod 10;
for k:=1 to i do
s:=s+b[j]*a[k];
m:=m div 10;
end;
write(s);
end.
