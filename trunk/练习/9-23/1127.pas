var n,i:longint;
s:real;
begin
readln(n);
while n>=s do
begin
inc(i);
s:=1/i+s;
end;
writeln(i);
end.