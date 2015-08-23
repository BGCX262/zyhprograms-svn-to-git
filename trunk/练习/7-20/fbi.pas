var a:array[1..10000]of qword;
n,i:longint;
begin
assign(input,'fbi.in');
assign(output,'fbi.out');
reset(input);
rewrite(output);
readln(n);
a[1]:=0;a[2]:=1;
for i:=3 to n do a[i]:=a[i-1]+a[i-2];
writeln(a[n]);
close(input);
close(output);
end.
