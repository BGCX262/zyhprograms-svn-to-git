var a,b,c:array[1..10000]of longint;
l,l1,l2,i,j:longint;
n,m,x:qword;
begin
readln(n);
m:=n+1;
if n mod 2=0 then n:=n div 2
else m:=m div 2;
while n>0 do begin
inc(l1);
a[l1]:=n mod 10;
n:=n div 10;
end;
while m>0 do begin
inc(l2);
b[l2]:=m mod 10;
m:=m div 10;
end;
for i:=1 to l1 do begin
x:=0;
for j:=1 to l2 do begin
x:=a[i]*b[j]+x div 10+c[i+j-1];
c[i+j-1]:=x mod 10;
end;
c[i+j]:=x div 10;
end;
l:=l1+l2;
while (c[l]=0) and (l>1) do l:=l-1;
a:=c;
b:=c;
fillchar(c,sizeof(c),0);
for i:=1 to l do begin
x:=0;
for j:=1 to l do begin
x:=a[i]*b[j]+x div 10+c[i+j-1];
c[i+j-1]:=x mod 10;
end;
c[i+j]:=x div 10;
end;
l:=l+l;
while (c[l]=0) and (l>1) do l:=l-1;
for i:=l downto 1 do write(c[i]);
end.

