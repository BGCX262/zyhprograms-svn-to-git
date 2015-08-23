var a:array[1..10000,1..3]of longint;
n,i,min,j:longint;
begin
assign(input,'pipe.in');
assign(output,'pipe.out');
reset(input);
rewrite(output);
readln(n);
for i:=1 to n do readln(a[i,1],a[i,2]);
min:=32767;
for i:=1 to n do
for j:=1 to n do
a[i,3]:=a[i,3]+abs(a[i,2]-a[j,2]);
for i:=1 to n do if min>a[i,3] then min:=a[i,3];
writeln(min);
close(input);
close(output);
end.
