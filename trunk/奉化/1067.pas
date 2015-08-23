var a:array[1..1000]of longint;
n,i,j,k,s:longint;
function ss(n:longint):boolean;
var i:longint;
begin
ss:=true;
for i:=1 to trunc(sqrt(n)) do
if n mod i=0 then begin
ss:=false;
exit;
end;
end;
begin
readln(n);
for i:=2 to n do
if ss(i) then inc(a[i])
else begin
k:=i;
j:=2;
while k<>1 do begin
if k mod j=0 then
while k mod j=0 do begin
k:=k div j;
inc(a[j]);
end
else inc(j);
end;
end;
write(n,'!=');
for i:=1 to n do
for j:=1 to a[i] do
if s=0 then begin
write(i);
inc(s);
end
else write('*',i);
end.
