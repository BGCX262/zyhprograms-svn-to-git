program jdss;
var a,i,j,l:integer;
function zs(n:integer):boolean;
var i:integer;
begin
zs:=true;
for i:=2 to trunc(sqrt(n)) do begin
if n mod i=0 then begin
zs:=false;exit;end;end;
end;
procedure ew;
var i,l,a,j:integer;
begin
for i:=10 to 99 do begin
if zs(i) then begin
l:=i mod 10;
a:=i div 10;
j:=l*10+a;
if zs(j) then write(i:5);
end;
end;
end;
procedure sw;
var b,i,l,a,j:integer;
begin
for i:=100 to 999 do begin
if zs(i) then begin
l:=i mod 10;
a:=i div 10 mod 10;
b:=i div 100;
j:=b+a*10+l*100;
if zs(j) then write(i:6);
end;
end;
end;
procedure fw;
var c,b,i,l,a,j:integer;
begin
for i:=1001 to 9999 do begin
if zs(i) then begin
l:=i mod 10;
a:=i div 10 mod 10;
b:=i div 100 mod 10;
c:=i div 1000;
j:=l*1000+a*100+b*10+c;
if zs(j) then write(i:7);
end;
end;
end;
begin
readln(a);
case a of
2:ew;
3:sw;
4:fw;
end;
end.