type
arr=packed array[0..5000]of longint;
var n,k,i,j,d,m:longint;
a,b:arr;
procedure gao(var x,y:arr);
var i,j:longint;
c:arr;
begin
for i:=1 to 100 do c[i]:=0;
for i:=1 to 100 do
for j:=1 to 100-i+1 do
c[i+j-1]:=c[i+j-1]+x[i]*y[j];
for i:=1 to 99 do
begin
c[i+1]:=c[i+1]+c[i] div 10;
c[i]:=c[i] mod 10;
end;
c[100]:=c[100] mod 10;
for i:=1 to 100 do
x[i]:=c[i];
end;
begin
read(m,n);
a[1]:=1;b[1]:=m;
k:=n;
while k>0 do
begin
if k mod 2=1 then
gao(a,b);
k:=k div 2;
gao(b,b);
end;
for i:=100 downto 1 do write(a[i]);
end.

