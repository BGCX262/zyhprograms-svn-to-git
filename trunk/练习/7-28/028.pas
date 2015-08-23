const a:array[0..9]of integer=(6,2,5,5,4,5,6,3,7,6);
var n,s:longint;
b:array[1..2]of longint;
function ss(x,y,z:longint):boolean;
var i,s:longint;
begin
s:=0;
if x<>0 then
while x>0 do begin
s:=s+a[x mod 10];
x:=x div 10;
end
else s:=s+6;
if y<>0 then
while y>0 do begin
s:=s+a[y mod 10];
y:=y div 10;
end
else s:=s+6;
if z<>0 then
while z>0 do begin
s:=s+a[z mod 10];
z:=z div 10;
end
else s:=s+6;
if s+4=n then ss:=true
else ss:=false;
end;
procedure asd(step:longint);
var i:longint;
begin
if (step=3) then
if (ss(b[1],b[2],b[1]+b[2])) then begin
inc(s);exit;
end  else exit;
for i:=0 to 711 do
begin
b[step]:=i;
asd(step+1);
end;
end;
begin
readln(n);
asd(1);
writeln(s);
end.