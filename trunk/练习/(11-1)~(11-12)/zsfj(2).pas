var
a:array[1..300]of integer;
i,j,n,k,x,y,w:integer;
begin
readln(n); k:=0;
if n=1 then writeln('1')
else  if n=2 then writeln('2')
else  if n=3 then writeln('3')
else  if n=4 then writeln('4')
else  if n=5 then writeln('6')
else begin
x:=n mod 3;
if (x=1) then begin
k:=(n div 3)-1;
x:=4;
end
else if (x=0) then begin
k:=n div 3;
x:=1;
end
else k:=(n div 3);
a[1]:=1;y:=0;w:=1;
for i:=1 to k do
for j:=1 to w do
begin
a[j]:=a[j]*3+y;
y:=a[j] div 10;
a[j]:=a[j] mod 10;
if (j=w)and(y<>0)then
begin
w:=w+1;
a[w]:=y;
y:=0;
end;
end;
for j:=1 to w do
begin
a[j]:=a[j]*x+y;
y:=a[j] div 10;
a[j]:=a[j] mod 10;
if (j=w)and(y<>0)then
begin
w:=w+1;a[w]:=y;
end;
end;
for i:=w downto 1 do
write(a[i]);
end;
end.