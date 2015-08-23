var x1,y1,x2,y2,n,m,i,j:longint;
f:array[-2..1000,-2..1000]of longint;
begin
readln(n,m);
readln(x1,y1);
readln(x2,y2);
f[x1,y1]:=1;
for i:=x1+1 to x2 do
for j:=1 to m do
f[i,j]:=f[i-1,j-2]+f[i-1,j+2]+f[i-2,j-2]+f[i-2,j+1];
if f[x1,y1]=0 then writeln('NO')
else writeln(f[x2,y2],'00000000');
end.