var a:array[1..1000]of longint;
i,n,j:longint;
s:real;
begin
assign(input,'dollars.in');
assign(output,'dollars.out');
reset(input);
rewrite(output);
readln(n);
for i:=1 to n do readln(a[i]);
i:=0;a[n+1]:=maxlongint;
s:=100;
while i<n do
begin
inc(i);
while (a[i]<a[i+1])and(i<=n) do inc(i);
s:=s*a[i]/100;
while (a[i]>a[i+1])and(i<=n) do inc(i);
s:=s/a[i]*100;
end;
writeln((int(s*1000)/1000):0:2);
close(input);
close(output);
end.
