program dsf;
var a:array[1..100,1..100]of integer;
n,j,i,l,h,k:integer;
begin
read(n);
k:=1;i:=1;j:=n div 2+1;
a[i,j]:=1;
repeat
k:=k+1;
h:=i-1;
l:=j-1;
if h=0 then h:=n;
if l=0 then l:=n;
if a[h,l]<>0 then begin
a[i+1,j]:=k;i:=i+1;
end
else
begin
a[h,l]:=k;i:=h;j:=l;
end;
until k=sqr(n);
for i:=1 to n do begin
for j:=1 to n do
write(a[i,j]:4);
writeln;
end;
end.