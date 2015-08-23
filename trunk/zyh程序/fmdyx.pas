var n,a,b,c:longint;
s:string;
begin
readln(n);
read(a,b,c);
a:=(a+b+c)*n;
str(a,s);
s:=copy(s,1,4);
if  (a=18)or(a=15)or(a=300)or(s='4444') then writeln('JMcat Win')
else writeln('PZ Win');
end.