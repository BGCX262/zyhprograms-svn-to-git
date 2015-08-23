program shfeng;
const m=1e-6;
var
p,q:double;
n:longint;
begin
readln(p,q);
p:=p/100;
q:=q/100;
n:=1;
if p<>0 then
while trunc(n/q+m)+1>trunc(n/p-m) do inc(n);
writeln(trunc(n/q+m)+1);
end. 