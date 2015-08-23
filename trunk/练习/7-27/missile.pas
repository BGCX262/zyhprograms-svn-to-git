var a,l:array[1..10000]of longint;
n,i,j,k,p:longint;
begin
assign(input,'missile.in');
assign(output,'missile.out');
reset(input);
rewrite(output);
repeat
inc(n);
read(a[n]);
until eof(input);
k:=1;l[1]:=a[1];
for i:=2 to n do
begin
p:=0;
for j:=1 to k do
if (l[j]>=a[i]) then
if p=0 then p:=j
else if l[j]<l[p] then p:=j;
if p=0 then begin inc(k);l[k]:=a[i];end
else l[p]:=a[i];
end;
writeln(k);
close(input);
close(output);
end.
