var n,r,p,i,s:longint;
a:array[1..3000]of longint;
begin
readln(n,r);
for i:=1 to n do begin
readln(a[i]);
s:=s+a[i];
end;
p:=s+1;
repeat;
p:=p-1;
until (s mod p=0)and(s div p>n);
writeln(s div p-n,' ',p);
if p>r then writeln('T')
else writeln('F');
end.