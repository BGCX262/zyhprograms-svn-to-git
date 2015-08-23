var a,b,c,d,e:integer;
begin
for a:=1 to 5 do
for b:=1 to 5 do
if a<>b then
for c:=1 to 5 do
if (a<>c)and(b<>c) then
for d:=1 to 5 do
if (a<>d)and(b<>d)and(c<>d) then
for e:=1 to 5 do
if (a<>e)and(b<>e)and(c<>e)and(d<>e) then
if (ord(b=5)+ord(d=3)=1) then
if (ord(a=1)+ord(e=4)=1) then
if (ord(c=4)+ord(d=2)=1) then
if (ord(b=3)+ord(e=5)=1) then
begin
writeln('A:',a);
writeln('B:',b);
writeln('C:',c);
writeln('D:',d);
writeln('E:',e);
end;
end.