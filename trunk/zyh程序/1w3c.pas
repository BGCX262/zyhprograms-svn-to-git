var
a,b,c,d,x:real;
i,t:integer;
function f(x:real):real;
begin
f:=((a*x+b)*x+c)*x+d;
end;
begin
read(a,b,c,d);
t:=0;
for i:=-10000 to 10000 do
begin
x:=i/100;
if (f(x)>-0.0001) and (f(x)<0.0001) then
begin
inc(t);
if t>3 then exit;
write(x:0:2,' ');
end;
end;
end.
