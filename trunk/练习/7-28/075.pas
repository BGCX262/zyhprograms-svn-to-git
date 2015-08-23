const a:array[1..16]of integer=(3,6,11,45,23,70,67,34,26,89,90,15,56,50,20,10);
var b,c:array[1..16]of longint;
r,t,d,e,q,w,i,j,l:longint;
begin
read(r,t,d,e);
for i:=r to t do begin
inc(j);
b[j]:=a[i];
end;
for i:=d to e do begin
inc(l);
c[l]:=a[i];
end;
for i:=e downto d do
begin
a[i]:=b[l];
dec(l);
end;
for i:=t downto r do
begin
a[i]:=c[j];
dec(j);
end;
for i:=1 to 16 do write(a[i],' ');
end.
