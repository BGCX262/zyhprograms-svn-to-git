var j,y,d,b:longint;
begin
for j:=0 to 1 do
for y:=0 to 1 do
for b:=0 to 1 do
for d:=0 to 1 do
if (ord(y=0)+ord(d=1)=2)or(ord(y=0)+ord(d=1)=0) then
if (ord(y=0)+ord(b=1)=2)or(ord(y=0)+ord(b=1)=0) then
if (ord(j=0)+ord(y=1)=2)or(ord(j=0)+ord(y=1)=0) then
if (ord(d=0)=1)or(ord(d=0)=0) then
if j+y+b+d=1 then
begin
writeln('A:',j);
writeln('B:',y);
writeln('C:',b);
writeln('D:',d);
end;
end.
