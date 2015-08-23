var a:array[1..100,1..2]of integer;
i,n,l,j,max:integer;
begin
read(n);
for i:=1 to n do begin
read(a[i,1]);
a[i,2]:=1;
end;
for i:=n-1 downto 1 do
begin
l:=0;
for j:=i+1 to n do
if (a[j,1]<a[i,1])and(a[j,2]>l) then
l:=a[j,2];
if l>0 then
a[i,2]:=l+1;
end;
for i:=1 to n do
if max<a[i,2] then max:=a[i,2];
writeln(max);
end.