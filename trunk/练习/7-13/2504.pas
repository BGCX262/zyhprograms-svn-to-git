var n,y,x,j,i,k:longint;
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
readln(x,y);
for j:=1 to 1000000 do begin
k:=gys(x,j);
if k=y then
if j>y then begin
writeln(j);
break;
end;
end;
end;
end.