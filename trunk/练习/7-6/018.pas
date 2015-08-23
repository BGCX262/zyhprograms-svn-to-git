var d,t,b,h:longint;
begin
for d:=1 to 4 do
for h:=1 to 4 do
if d<>h then
for b:=1 to 4 do
if (b<>d)and(b<>h) then
for t:=1 to 4 do
if (t<>d)and(t<>h)and(t<>b) then
if  ord(d=1)+ord(h=4)+ord(b=3)=1 then
if ord(h=1)+ord(d=4)+ord(b=2)+ord(t=3)=1 then
if ord(h=4)+ord(d=3)=1 then
if  ord(b=1)+ord(t=4)+ord(h=2)+ord(d=3)=1 then
begin
writeln('dth',d);
writeln('th',t);
writeln('hzh',h);
writeln('byh',b);
end;
end.
