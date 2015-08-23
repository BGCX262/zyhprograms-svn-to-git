var a:array[1..100]of longint;
f:array[0..100,0..1000]of longint;
i,j,n,k:longint;
function max(x,y:longint):longint;
begin
if x>y then max:=x
else max:=y;
end;
begin
assign(input,'load.in');
assign(output,'load.out');
reset(input);
rewrite(output);
readln(n,k);
for i:=1 to n do read(a[i]);
for i:=1 to n do
for j:=1 to k do
if j>=a[i] then f[i,j]:=max(f[i-1,j],f[i-1,j-a[i]]+a[i])
else f[i,j]:=f[i-1,j];
writeln(f[n,k]);
close(input);
close(output);
end.