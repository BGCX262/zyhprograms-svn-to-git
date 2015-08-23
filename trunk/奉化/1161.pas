var i,j,i1,j1,r:longint;
max:real;
begin
readln(r);
for i:=1 to trunc(r*sqrt(2)) do
for j:=i to trunc(r*sqrt(2)) do
if (max<(i*sqrt(sqr(r*2)-sqr(i))+j*sqrt(sqr(r*2)-sqr(j))-i*j)) then begin
i1:=i;
j1:=j;
max:=i*sqrt(sqr(r*2)-sqr(i))+j*sqrt(sqr(r*2)-sqr(j))-i*j;
end;
writeln(i1,' ',j1);
end.

