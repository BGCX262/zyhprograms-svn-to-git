var
i,n,x1,x2,h,j,k:longint;
a,b:array[0..1500] of longint;
begin
readln(n);h:=0;
for i:=1 to n do
begin
read(x1);
a[i]:=x1-x2;x2:=x1;
end;
for i:=1 to n do
for j:=i downto 1 do
begin
inc(k,b[j]);
if a[j]<>0 then
begin
dec(a[j]);inc(b[j]);write(k+1,' ');k:=0;break;
end;
end;
end.
