var i,j,k,l,s:longint;
begin
for i:=1 to 10 do
for j:=1 to 20 do
for k:=1 to 50 do
for l:=1 to 100 do
if (i*10+j*5+k*2+l=100)and(i+j+k+l=40) then inc(s);
writeln(s);
end.
