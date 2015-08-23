var i,m,n:longint;
a:array[-5.. 50] of int64;
begin
read(n,m);
a[-1]:=1;
a[0]:=1;
for i:=1 to n do
a[i]:=a[i-1]*2-a[i-m-1];
writeln(a[n]);
end.