var n,t,s,m:longint;
begin
read(n,t,m);
s:=0;
while s<t do
begin
n:=n*n mod m;
s:=s+1;
end;
writeln(n);
end.