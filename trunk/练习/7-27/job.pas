var s,min,i,j,n:longint;
a:array[1..20,1..20]of longint;
b:array[1..20]of boolean;
procedure asd(step:longint);
var i:longint;
begin
if step=n+1 then begin
if min>s then min:=s;
exit;
end;
for i:=1 to n do
if b[i] then
begin
b[i]:=false;
s:=s+a[step,i];
asd(step+1);
b[i]:=true;
s:=s-a[step,i];
end;
end;
begin
assign(input,'job.in');
assign(output,'job.out');
reset(input);
rewrite(output);
readln(n);
for i:=1 to n do
for j:=1 to n do
read(a[i,j]);
for i:=1 to n do b[i]:=true;
min:=maxlongint;
asd(1);
writeln(min);
close(input);
close(output);
end.