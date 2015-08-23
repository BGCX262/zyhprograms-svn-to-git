var f:array[-2..1002,-2..1002] of int64;
n,m,x1,y1,x2,y2,i,j:integer;
begin
fillchar(f,sizeof(f),0);
readln(n,m);
readln(x1,y1);
f[x1,y1]:=1 ;
readln(x2,y2);
for i:=x1+1 to x2 do
for j:=1 to m do
if f[i,j]=0 then
f[i,j]:=f[i-1,j-2]+f[i-2,j-1]+f[i-2,j+1]+f[i-1,j+2];
if f[x2,y2]<>0 then writeln(f[x2,y2],'00000000')
else writeln('NO');
end.

