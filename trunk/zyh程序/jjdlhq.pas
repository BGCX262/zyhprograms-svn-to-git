program sd;
var i,s,t,q:longint;
v:real;
a:array[1..1000] of longint;
begin
for i:=1 to 12 do
read(a[i]);
for i:=1 to 12 do
begin
s:=s+300;
s:=s-a[i];
if s>=100 then begin t:=s div 100;s:=s-t*100;q:=q+t*100;end;
if s<0 then begin writeln('-',i);exit;end;
end;
v:=q*1.2+s;
writeln(v:0:0);
readln;
end.