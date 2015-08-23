var max,n,m,i,j,k:integer;
a:array[1..100,1..100]of integer;
b:array[0..100,0..100,0..100]of boolean;
function min(x,y:integer):integer;
begin
if x<y then min:=x
else min:=y;
end;
begin
readln(n,m);
for i:=1 to n do
for j:=1 to m do begin
read(a[i,j]);
if a[i,j]=0 then b[1,i,j]:=false
else b[1,i,j]:=true;
end;
for k:=1 to min(n,m) do
for i:=1 to n-k+1 do
for j:=1 to m-k+1 do
if (b[k-1,i,j])and(b[k-1,i,j+1])and(b[k-1,i+1,j])and(b[k-1,i+1,j+1]) then
b[k,i,j]:=true;
for k:=1 to min(n,m) do
for i:=1 to n do
for j:=1 to m do
if (b[k,i,j])and(max<k) then max:=k;
writeln(max);
end.
