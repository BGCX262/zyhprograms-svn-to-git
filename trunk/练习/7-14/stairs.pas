var a:array[1..100]of qword;
i,n:longint;
begin
assign(input,'stairs.in');
assign(output,'stairs.out');
reset(input);
rewrite(output);
readln(n);
a[1]:=1;a[2]:=2;a[3]:=3;
for i:=3 to n do
a[i]:=a[i-1]+a[i-2];
writeln(a[n]);
close(input);
close(output);
end.
