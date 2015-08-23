const lam=1e-10;
var x,y:array[1..1000]of real;
g:array[1..1000,1..1000]of boolean;
match:array[1..1000]of integer;
vis:array[1..1000]of boolean;
r,a,t,s,i,j:integer;
x1,y1,v:real;
function dfs(i:integer):boolean;
var j:integer;
begin
for j:=1 to a do
if g[i,j]and not vis[j]
then begin
vis[j]:=true;
if(match[j]=0)or dfs(match[j])
then begin
match[j]:=i;
exit(true);
end;
end;
exit(false);
end;
begin
readln(r,a,t);
for i:=1 to a do
read(x[i],y[i]);
for i:=1 to r do
begin
readln(x1,y1,v);
for j:=1 to a do
if sqr(x[j]-x1)+sqr(y[j]-y1)-sqr(v*t)<lam
then g[i,j]:=true;
end;
s:=0;
for i:=1 to r do
begin
fillchar(vis,sizeof(vis),0);
if dfs(i)then
inc(s);
end;
write(s);
end. 