var a:array[1..100]of longint;
i,j,k,n:longint;
begin
assign(input,'coin.in');
assign(output,'coin.out');
reset(input);
rewrite(output);
readln(n);
writeln(n);
for i:=1 to n do
if i mod 2=1 then begin
j:=1;
while a[j]=1 do inc(j);
for k:=1 to n do
if k<>j then
if a[k]=1 then a[k]:=0
else a[k]:=1;
for k:=1 to n do write(a[k]);
writeln;
end
else begin
j:=1;
while a[j]=0 do inc(j);
for k:=1 to n do
if k<>j then
if a[k]=1 then a[k]:=0
else a[k]:=1;
for k:=1 to n do write(a[k]);
writeln;
end;
close(input);
close(output);
end.
