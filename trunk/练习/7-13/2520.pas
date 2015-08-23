var n,m,i,s,a:longint;
begin
readln(n);
for i:=1 to n do
begin
readln(m);
a:=1;s:=1;
for i:=2 to m do begin
a:=(a+2)mod 10000;
s:=(a+s)mod 10000;
end;
writeln(s);
end;
end.

