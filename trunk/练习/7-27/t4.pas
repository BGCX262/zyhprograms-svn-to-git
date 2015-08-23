var
max,d,g,i,j,k:longint;
t,f,h:array[1..10000] of longint;
opt:packed array[0..1000,1..2980] of boolean;
procedure qsort(l,r:longint);
var
x,i,j,temp:longint;
begin
i:=l;j:=r; x:=t[(i+j) div 2];
repeat
while t[i]<x do inc(i);
while x<t[j] do dec(j);
if i<=j then
begin
temp:=t[i]; t[i]:=t[j]; t[j]:=temp;
temp:=f[i]; f[i]:=f[j]; f[j]:=temp;
temp:=h[i]; h[i]:=h[j]; h[j]:=temp;
inc(i);dec(j);
end;
until i>j;
if i<r then qsort(i,r);
if l<j then qsort(l,j);
end;
begin
assign(input,'t4.in');
assign(output,'t4.out');
reset(input);rewrite(output);
readln(d,g);
for i:=1 to g do
readln(t[i],f[i],h[i]);
fillchar(opt,sizeof(opt),false);
opt[0,10]:=true;
qsort(1,g);
max:=10;
for i:=1 to g do inc(max,f[i]);
for k:=1 to g do
for i:=d-1 downto 0 do
for j:=max downto t[k] do
begin
if opt[i,j] then
begin
opt[i+h[k],j]:=true;
if (i+h[k])>=d then
begin
writeln(t[k]);close(output);
halt;
end;
opt[i,j+f[k]]:=true;
end;
end;
for j:=max downto 1 do
if opt[0,j] then begin writeln(j);close(output);halt;end;
end.
