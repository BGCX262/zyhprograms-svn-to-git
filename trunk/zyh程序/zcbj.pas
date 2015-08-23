var a:array[1..100,1..3]of integer;
i,n,k,l,j:integer;
begin
read(n);
for i:=1 to n do begin
read(a[i,1]);
a[i,2]:=1;
a[i,3]:=0;
end;
for i:=n-1 downto 1 do
begin
k:=0;l:=0;
for j:=i+1 to n do
if (a[j,1]>a[i,1])and(a[j,2]>l) then begin
l:=a[j,2];
k:=j;
end;
if l>0 then begin
a[i,2]:=l+1;a[i,3]:=k;
end;
end;
k:=1;
for i:=1 to n do
if a[j,2]>a[k,2] then k:=j;
writeln(a[k,2]);
while k<>0 do
begin
write(a[k,1]:4);
k:=a[k,3];
end;
end.