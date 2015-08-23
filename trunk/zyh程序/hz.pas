var n,a,b,a1,a2:qword;
i:longint;
begin
readln(n,a,b);
a1:=1;a2:=1;
for i:=1+n to a+n do
a1:=trunc((a1*i)/(i-n));
for i:=1+n to b+n do
a2:=trunc((a2*i)/(i-n));
writeln(a1*a2);
end. 
