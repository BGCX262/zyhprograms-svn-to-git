var sum,t,i,j,n,m:longint;
function check(t:longint):boolean;
var i,j:longint;
begin
check:=true;
for i:=2 to trunc(sqrt(t)) do
if t mod i=0 then exit(false);
end;
Begin
readln(m,n);
for i:=2 to 11 do
if (i>=m) and (i<=n) then
if check(i) then writeln(i);
for i:=10 to 9999 do
begin
if (10<=i) and (i<=99) then
t:=i*10+i div 10;
if (100<=i) and (i<=999) then
t:=i*100+((i div 10) mod 10)*10+i div 100;
if (1000<=i) and (i<=9999) then
t:=i*1000+((i div 10) mod 10)*100+((i div 100) mod 10)*10+i div 1000;
if (t>=m) and (t<=n) then
if check(t) then writeln(t);
if (10<=i) and (i<=99) then
t:=i*100+(i mod 10)*10+i div 10;
if (100<=i) and (i<=999) then
t:=i*1000+(i mod 10)*100+((i div 10) mod 10)*10+i div 100;
if (1000<=i) and (i<=9999) then
t:=i*10000+(i mod 10)*1000+((i div 10) mod 10)*100+((i div 100) mod 10)*10
+i div 1000;
if (t>=m) and (t<=n) then
if check(t) then writeln(t);
end;
end.
