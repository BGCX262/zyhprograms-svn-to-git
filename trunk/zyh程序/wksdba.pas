var a:array[1..10000]of qword;
i,n:longint;
begin
readln(n);
a[1]:=1;a[2]:=1;a[3]:=2;
for i:=3 to n do
a[i]:=(a[i-1]+a[i-2])mod 7654321;
writeln(a[n]);
end.