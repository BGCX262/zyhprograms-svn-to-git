var a,b,c,d,d1,b1,n,i,ys,h:longint;
function gys(n,m:longint):longint;
var r,t:longint;
begin
if n<m then begin
t:=n;
n:=m;
m:=t;
end;
r:=n mod m;
if r=0 then gys:=m
else gys:=gys(m,r);
end;
begin
readln(n);
for i:=1 to n do begin
readln(a,b,c,d);
ys:=gys(b,d);
b1:=b*(d div ys);
d1:=d*(b div ys);
h:=a*(b1 div b)+c*(d1 div d);
ys:=gys(h,b1);
writeln(h div ys,' ',b1 div ys);
end;
end.



