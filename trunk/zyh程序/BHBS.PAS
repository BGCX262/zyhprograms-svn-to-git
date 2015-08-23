var  w:array[1..100]of integer;
n,m,s,i,j:integer;
f:array[0..100,0..100]of integer;
function max(x,y:integer):integer;
begin
if x>y then max:=x
else max:=y;
end;
begin
readln(n);
for i:=1 to n do begin
readln(w[i]);
s:=s+w[i];
end;
m:=s div 2;
for i:=1 to n do
for j:=m downto w[i] do
f[i,j]:=max(f[i-1,j-w[i]]+w[i],f[i-1,j]);
writeln(abs((s-f[n,m])-f[n,m]));
end.