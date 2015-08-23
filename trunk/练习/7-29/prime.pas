var f:array[0..200]of qword;
a:array[1..200]of longint;
n,m:qword;
i,j:longint;
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
begin
assign(input,'prime.in');
assign(output,'prime.out');
reset(input);
rewrite(output);
readln(n);
for i:=2 to n do
if ss(i) then
begin
inc(m);
a[m]:=i;
end;
f[0]:=1;
for i:=1 to m do
for j:=a[i] to n do
inc(f[j],f[j-a[i]]);
writeln(f[n]);
close(input);
close(output);
end.