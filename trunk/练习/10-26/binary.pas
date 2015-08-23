var a:array[1..1000000]of longint;
n,i:longint;
begin
assign(input,'binary.in');
assign(output,'binary.out');
reset(input);
rewrite(output);
readln(n);
a[1]:=1;
a[2]:=2;
for i:=3 to n do a[i]:=(a[i-1]+a[i-2])mod 15746;
writeln(a[n]);
close(input);
close(output);
end.