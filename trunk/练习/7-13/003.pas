var n,m:longint;
begin
readln(n,m);
if abs(n-m)<10e-8 then writeln('1')
else if n<m then writeln('0')
else if trunc(n/m)>2 then writeln(trunc(n/m)*3-2)
else writeln('2');
end.