var a,b:array[1..10000]of integer;
i,j,n,s,max,t:integer;
procedure asd(l,r:integer);
var i,j,m,p:integer;
begin
i:=l;j:=r;
m:=a[(l+r)div 2];
repeat
while a[i]<m do inc(i);
while a[j]>m do dec(j);
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
assign(input,'masses.in');
assign(output,'masses.out');
reset(input);
rewrite(output);
readln(n);
for i:=1 to n do read(a[i]);
asd(1,n);
for i:=1 to n do begin
for j:=i to n do
if a[i]=a[j] then s:=s+1;
b[i]:=s;
if max<s then max:=s;
s:=0;
end;
for i:=1 to n do
if max=b[i] then writeln(a[i],' ',b[i]);
close(input);
close(output);
end.
