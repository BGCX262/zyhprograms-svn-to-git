var f:array[0..100]of longint;
n,m,j,i,p:longint;
begin
assign(input,'t8.in');
assign(output,'t8.out');
reset(input);
rewrite(output);
readln(n,m);
f[0]:=1;
for i:=1 to n do begin
read(p);
for j:=p to m do
inc(f[j],f[j-p]);
end;
writeln(f[m]);
close(input);
close(output);
end.
