var a:array[1..100]of longint;
n,i:longint;
begin
readln(n);
a[1]:=2;a[2]:=3;
for i:=3 to n do a[i]:=a[i-1]+a[i-2];
writeln(a[n]);
end.