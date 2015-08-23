var i,j,n:longint;
f:array[1..1000]of longint;
begin
assign(input,'count.in');
assign(output,'count.out');
reset(input);
rewrite(output);
readln(n);
for i:=1 to n do
begin
f[i]:=1;
for j:=i div 2 downto 1 do
f[i]:=f[i]+f[j];
end;
writeln(f[n]);
close(input);
close(output);
end.
