type
arr=packed array[0..500]of longint;
var n,k,i:longint;
a,b:arr;
procedure gao(var x,y:arr);
var i,j:longint;
c:arr;
begin
for i:=1 to 500 do c[i]:=0;
for i:=1 to 500 do
for j:=1 to 500-i+1 do
c[i+j-1]:=c[i+j-1]+x[i]*y[j];
for i:=1 to 499 do
begin
c[i+1]:=c[i+1]+c[i] div 10;
c[i]:=c[i] mod 10;
end;
c[500]:=c[500] mod 10;
for i:=1 to 500 do
x[i]:=c[i];
end;
begin
read(n);
a[1]:=1;b[1]:=2;
k:=n;
while k>0 do
begin
if k mod 2=1 then
gao(a,b);
k:=k div 2;
gao(b,b);
end;
dec(a[1]);
writeln(trunc(n*ln(2)/ln(10))+1);
for i:=500 downto 1 do
if i mod 50=1 then writeln(a[i])
else write(a[i]);
end.
