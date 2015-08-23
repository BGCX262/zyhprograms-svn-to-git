var a:array[1..10000]of longint;
t,s,n,i,j:longint;
begin
assign(input,'carry.in');
assign(output,'carry.out');
reset(input);
rewrite(output);
readln(n);
for i:=1 to n do read(a[i]);
for i:=1 to n-1 do
for j:=i+1 to n do
if a[i]>a[j] then begin
t:=a[i];
a[i]:=a[j];
a[j]:=t;
inc(s);
end;
writeln(s);
close(input);
close(output);
end.