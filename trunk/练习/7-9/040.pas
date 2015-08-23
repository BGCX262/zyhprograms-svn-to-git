var a,b:array[1..100]of integer;
c:array[1..100]of boolean;
i,j,n,t:integer;
s:integer;
begin
read(n);
for i:=1 to n do begin
read(a[i]);
b[i]:=a[i];
c[i]:=true;
end;
for i:=1 to n-1 do
for j:=i+1 to n do
if b[i]>b[j] then
begin
t:=b[i];
b[i]:=b[j];
b[j]:=t;
end;
for i:=1 to n do begin
for j:=1 to n do
if (b[i]=a[j])and(c[j]) then begin
write(j,' ');c[j]:=false;break;
end;
end;
writeln;
for i:=1 to n do
for j:=i-1 downto 1 do
s:=s+b[j];
writeln(s/n:0:2);
end.
