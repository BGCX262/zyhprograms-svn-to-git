var n,i,j,k,x:longint;
a:array[0..4000,0..4000]of char;
function ji2(n:longint):longint;
var sum,i:longint;
begin
sum:=1;
for i:=1 to n do
sum:=sum*2;
ji2:=sum;
end;
begin
fillchar(a,sizeof(a),' ');
readln(n);
a[1,2]:='/';a[1,3]:='\';
a[2,2]:='_';a[2,3]:='_';
a[2,1]:='/';a[2,4]:='\';
for k:=2 to n do
begin
for i:=ji2(k-1)+1 to ji2(k) do
for j:=1 to ji2(k) do
a[i,j]:=a[i-ji2(k-1),j];
for i:=ji2(k-1)+1  to ji2(k) do
for j:=ji2(k)+1 to ji2(k)*2 do
a[i,j]:=a[i,j-ji2(k)];
for i:=1 to ji2(k-1) do
for j:=1 to ji2(k) do
a[i,j]:=' ';
for i:=1 to ji2(k-1) do
for j:=ji2(k-1)+1 to ji2(k-1)*3  do
a[i,j]:=a[i+ji2(k-1),j-ji2(k-1)];
end;
for i:=1 to ji2(n) do
begin
for j:=1 to ji2(n)+i  do
write(a[i,j]);
if i<>ji2(n) then write(' ');
if i<>ji2(n) then
writeln;
end;
end.
