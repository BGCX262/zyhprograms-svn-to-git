var c,fa,fb:array[0..10000]of longint;
x:array[0..1]of longint;
n,k,i,j,u:longint;
begin
readln(n,k);
for i:=1 to n do readln(c[i]);
for i:=1 to n do
begin
inc(x[c[i]]);
fa[i]:=x[0]*x[1];
end;
for i:=2 to k do
begin
for j:=i to n do
begin
fb[j]:=fa[j-1];
fillchar(x,sizeof(x),0);
for u:=j downto i do
begin
inc(x[c[u]]);
if fa[u-1]+x[0]*x[1]<fb[j] then
fb[j]:=fa[u-1]+x[0]*x[1];
end;
end;
fa:=fb;
end;
if k=1 then writeln(fa[n])
else writeln(fb[n]);
end.