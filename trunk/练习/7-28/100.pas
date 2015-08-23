var x,y,z:longint;
begin
for x:=1 to 9 do
for y:=1 to 9 do
if x<>y then
for z:=1 to 9 do
if (x<>z)and(y<>z) then
if x*1111+y*1111+z*1111=z+x*1110+y*10000 then begin
writeln('  ',x,x,x,x);
writeln('  ',y,y,y,y);
writeln(' +',z,z,z,z);
writeln('------------');
writeln(' ',y,x,x,x,z);
end;
end.