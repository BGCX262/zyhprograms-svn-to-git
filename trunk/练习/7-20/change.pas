var a:array[1..10000]of longint;
n,i,j:longint;
begin
assign(input,'change.in');
assign(output,'change.out');
reset(input);
rewrite(output);
readln(n);
while n>0 do begin
inc(i);
a[i]:=n mod 8;
n:=n div 8;
end;
for j:=i downto 1 do write(a[j]);
writeln;
close(input);
close(output);
end.