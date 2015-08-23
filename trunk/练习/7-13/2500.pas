var n,j,i,k:longint;
a:array[1..10000]of longint;
begin
readln(n);
for i:=1 to n do readln(a[i]);
for i:=1 to n do
for j:=1 to a[i]*3 do  begin
for k:=1 to a[i] do write('HDU');
writeln;
end;
end.
