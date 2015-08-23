var w,c:array[1..100]of integer;
f:array[0..100,0..100]of integer;
i,j,m,n:integer;
t,g:text;
function max(x,y:integer):integer;
begin
if x>y then max:=x
else max:=y;
end;
begin
assign(t,'wcbb.in');
assign(g,'wcbb.out');
reset(t);
read(t,m,n);
rewrite(g);
for i:=1 to n do
read(t,w[i],c[i]);
close(t);
for i:=1 to n do
for j:=1 to m do
if j>=w[i] then
f[i,j]:=max(f[i-1,j-w[i]]+c[i],f[i-1,j])
else f[i,j]:=f[i-1,j];
writeln(g,f[n,m]);
end.

