var
i,n:longint;
m:extended;
begin
readln(m);
while m<>0 do
begin
if abs(m)>32767*32768 div 2   then
begin
writeln(0);readln(m);continue;
end;
if abs(m)=1   then
begin
writeln(1);readln(m);continue;
end;
n:=trunc(abs(m));
i:=2;
while (i*(i+1) div 2<n)or(odd(i*(i+1)div 2) xor odd(n)) do
inc(i);
writeln(i);
readln(m);
end;
end. 

