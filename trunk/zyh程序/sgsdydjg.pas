var
i,j,k,s,m,n:longint;
a:array[0..1000,0..1000] of char;
procedure dd(t1,t2:longint);
var
i,j:longint;
begin
a[t1,t2]:='-';
if t1+1<=n then if a[t1+1,t2]='#' then dd(t1+1,t2);
if t1+2<=n then if a[t1+2,t2]='#' then dd(t1+2,t2);
if t1-1>=1 then if a[t1-1,t2]='#' then dd(t1-1,t2);
if t1-2>=1 then if a[t1-2,t2]='#' then dd(t1-2,t2);
if t2+1<=m then if a[t1,t2+1]='#' then dd(t1,t2+1);
if t2+2<=m then if a[t1,t2+2]='#' then dd(t1,t2+2);
if t2-1>=1 then if a[t1,t2-1]='#' then dd(t1,t2-1);
if t2-2>=1 then if a[t1,t2-2]='#' then dd(t1,t2-2);
if (t1+1<=n)and(t2+1<=m) then if a[t1+1,t2+1]='#' then dd(t1+1,t2+1);
if (t1+1<=n)and(t2-1>=1) then if a[t1+1,t2-1]='#' then dd(t1+1,t2-1);
if (t1-1>=1)and(t2+1<=m) then if a[t1-1,t2+1]='#' then dd(t1-1,t2+1);
if (t1-1>=1)and(t2-1>=1) then if a[t1-1,t2-1]='#' then dd(t1-1,t2-1);
end;
begin
readln(n,m);
for i:=1 to n do
begin
for j:=1 to m do
read(a[i,j]);
readln;
end;
k:=0;
for i:=1 to n do
for j:=1 to m do
if a[i,j]='#' then
begin
inc(k);
dd(i,j);
end;
writeln(k);
end.
