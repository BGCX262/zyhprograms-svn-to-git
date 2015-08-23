var s,zong,m,p,k,n,i:longint;
a:array[0..100000] of longint;
function pan(q:longint):boolean;
var j:integer;
begin
for j:=2 to trunc(sqrt(q)) do
if q mod j = 0 then exit(false);
exit(true);
end;
procedure  run(x:longint);
begin
if x>n then exit
else
begin
s:=s+a[x];
inc(m);
if m<k then run(x+1)
else
if pan(s) then inc(zong);
s:=s-a[x];
dec(m);
run(x+1);
end;
end;
begin
readln(n,k);
for i:=1 to n do
read(a[i]);
zong:=0;m:=0;s:=0;
run(1);
writeln(zong);
end.