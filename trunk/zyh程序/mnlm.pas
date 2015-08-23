var n,k,h,i,j:longint;f:array[0..20,0..20] of qword;
a:array[1..20] of longint;
x,x1,x2:qword;
function p(x:longint):qword;
var i:longint;
begin
p:=1;
for i:=2 to x do p:=p*i;
end;
Begin
readln(n,k,h);
for i:=1 to h do read(a[i]);
for i:=0 to n do
f[i,0]:=1; 
for i:=1 to n do
for j:=1 to n do
f[i,j]:=f[i-1,j-1]*(n-j+1)+f[i-1,j];
x:=p(k); 
for i:=1 to h do x:=x div p(a[i]); 
writeln(f[n,k]*x);
End.

