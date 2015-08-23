var n,k,sum,i:longint;
a:array[1..10]of longint;
b:array[1..10]of boolean;
function ss(n:longint):boolean;
var i:longint;
begin
ss:=true;
for i:=2 to trunc(sqrt(n)) do
if n mod i=0 then begin
ss:=false;
exit;
end;
end;
procedure asd(t,s,j:longint);
var i:longint;
begin
if t=k+1 then
if ss(s) then begin
inc(sum);
exit;
end
else exit;
for i:=1 to n do
if (b[i])and(i>j) then
begin
b[i]:=false;
s:=s+a[i];
asd(t+1,s,i);
s:=s-a[i];
b[i]:=true;
end;
end;
begin
readln(n,k);
for i:=1 to n do read(a[i]);
for i:=1 to n do b[i]:=true;
asd(1,0,0);
writeln(sum);
end.