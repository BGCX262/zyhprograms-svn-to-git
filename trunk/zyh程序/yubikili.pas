var a:array[1..10000]of integer;
n,i,z:longint;
y:ansistring;
begin
assign(input,'yubikili.in');
assign(output,'yubikili.out');
reset(input);
rewrite(output);
readln(n);
readln(y);
for i:=1 to length(y) do
a[i]:=ord(y[i])-48;
for i:=1 to length(y) do
z:=(z*10+a[i]) mod n;
if z=0 then write(n)
else write(z);
close(input);
close(output);
end.
