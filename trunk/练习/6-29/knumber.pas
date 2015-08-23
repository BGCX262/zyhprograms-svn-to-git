var a:array[1..10000]of integer;
i,j,n,s,l:integer;
procedure asd(l,r:integer);
var i,j,m,p:integer;
begin
i:=l;j:=r;
m:=a[(l+r)div 2];
repeat
while (a[i]<m) do inc(i);
while (a[j]>m) do dec(j);
if i<=j then
begin
p:=a[i];a[i]:=a[j];
a[j]:=p;inc(i);
dec(j);
end;
until i>j;
if l<j then asd(l,j);
if i<r then asd(i,r);
end;
begin
assign(input,'knumber.in');
assign(output,'knumber.out');
reset(input);
rewrite(output);
readln(n,l);
for i:=1 to n do read(a[i]);
asd(1,n);
for i:=2 to n DO IF a[i]=abs(a[i-1]) then a[i]:=-a[i];
for i:=1 to n do if a[i]>0 then begin
s:=s+1;
if s=l then begin
writeln(a[i]);
close(input);
close(output);
halt;
end;
end;
writeln('NO RESULT');
close(input);
close(output);
end.
