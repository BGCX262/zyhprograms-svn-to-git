var i,j,k,n,x,high,max,l:longint;
f:array[0..15000]of boolean;
a:array[1..15000]of integer;
begin
readln(n);
f[0]:=true;
for k:=1 to n do
begin
read(x);
while (x<>-1) do
begin
inc(high,x);
for i:=high downto 0 do
if not(f[i+x]) and (f[i]) then
begin
f[x+i]:=true;
inc(a[x+i]);
end;
read(x);
end;
if max<high then max:=high;
for l:=1 to high do f[l]:=false;
high:=0;
end;
for i:=max downto 1 do
if a[i]=n then begin  writeln(i); halt; end;
writeln(0);
end.

