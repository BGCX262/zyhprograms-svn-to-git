var n,m,t:longint;
function asd(n,m:longint):longint;
var r:longint;
begin
r:=n mod m;
if r=0 then asd:=m
else asd:=asd(m,r);
end;
begin
assign(input,'gys.in');
assign(output,'gys.out');
reset(input);
rewrite(output);
readln(n,m);
if n<m then begin
t:=n;
n:=m;
m:=t
end;
writeln(asd(n,m));
close(input);
close(output);
end.
