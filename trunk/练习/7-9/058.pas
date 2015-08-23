var a:array[1..122]of longint;
l,i,max,min:longint;
st:string;
function ss(n:integer):boolean;
var i:integer;
begin
if (n>1) then ss:=true
else ss:=false;
for i:=2 to trunc(sqrt(n)) do
if n mod i=0 then ss:=false;
end;
begin
readln(st);
l:=length(st);
for i:=1 to l do
inc(a[ord(st[i])]);
min:=maxlongint;
for i:=1 to 122 do begin
if a[i]>max then max:=a[i];
if (a[i]<min)and(a[i]<>0) then min:=a[i];
end;
if ss(max-min) then begin
writeln('Lucky Word');
writeln(max-min);
end
else begin
writeln('No Answer');
writeln('0');
end;
end.
