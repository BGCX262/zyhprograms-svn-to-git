var a:array[1..100]of qword;
i,n:longint;
begin
assign(input,'rabbit.in');
assign(output,'rabbit.out');
reset(input);
rewrite(output);
readln(n);
a[1]:=1;a[2]:=1;a[3]:=2;
for i:=3 to n do
a[i]:=a[i-1]+a[i-2];
writeln(a[n]);
close(input);
close(output);
end.
