var i,j,k,l,m,n,oooo,ToT:longint;
a:array[-1..1000,-1..1000]of char;
begin
oooo:=0;
readln(m);
readln(n);
for i:=1 to m do begin
for j:=1 to m do
read(a[i,j]);
readln;end;
for i:=1 to (m-n+1) do
for j:=1 to (m-n+1) do
begin
tot:=0;
for k:=1 to n do
for l:=1 to n do
if a[i+k-1,j+l-1]='#' then   inc(ToT);
if ToT>oooo then oooo:=ToT;
end;
writeln(oooo);
end.