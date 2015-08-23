var g:array[0..15,0..15]of longint;
f:array[0..15,0..15]of longint;
n,m,x,y,i,j:longint;
begin
readln(n,m,x,y);
g[x,y]:=1;
if (x-1>=0)and(y-2>=0) then g[x-1,y-2]:=1;
if (x-2>=0)and(y-1>=0) then g[x-2,y-1]:=1;
if (x+1<=n)and(y+2<=n) then g[x+1,y+2]:=1;
if (x+2<=n)and(y+1<=n) then g[x+2,y+1]:=1;
if (x-1>=0)and(y+2<=n) then g[x-1,y+2]:=1;
if (x-2>=0)and(y+1<=n) then g[x-2,y+1]:=1;
if (x+1<=n)and(y-2>=0) then g[x+1,y-2]:=1;
if (x+2<=n)and(y-1>=0) then g[x+2,y-1]:=1;
for i:=0 to n do
for j:=0 to m do
if (i=0)and(j=0) then f[i,j]:=1
else if g[i,j]=1 then f[i,j]:=0
else if (i=0)and(j<>0) then f[i,j]:=f[i,j-1]+f[i,j]
else if (i<>0)and(j=0) then f[i,j]:=f[i-1,j]+f[i,j]
else if (i<>0)and(j<>0) then f[i,j]:=f[i-1,j]+f[i,j-1];
writeln(f[n,m]);
end.
