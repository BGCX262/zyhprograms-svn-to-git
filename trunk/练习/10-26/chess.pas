var a,b:array[1..10000]of longint;
n,k,i,s,m:longint;
procedure asd(l,r:longint);
var i,j,t,x:longint;
begin
i:=l;
j:=r;
x:=a[(l+r)div 2];
repeat
while a[i]<x do inc(i);
while a[j]>x do dec(j);
if i<=j then begin
t:=a[i];
a[i]:=a[j];
a[j]:=t;
inc(i);
dec(j);
end;
until i>j;
if i<r then asd(i,r);
if j>l then asd(l,j);
end;
procedure as(l,r:longint);
var i,j,t,x:longint;
begin
i:=l;
j:=r;
x:=b[(l+r)div 2];
repeat
while b[i]<x do inc(i);
while b[j]>x do dec(j);
if i<=j then begin
t:=b[i];
b[i]:=b[j];
b[j]:=t;
inc(i);
dec(j);
end;
until i>j;
if i<r then asd(i,r);
if j>l then asd(l,j);
end;
begin
assign(input,'chess.in');
assign(output,'chess.out');
reset(input);
rewrite(output);
readln(n,k);
for i:=1 to n do read(a[i]);
asd(1,n);
for i:=1 to n do
if i mod 2=0 then begin
inc(m);
b[m]:=a[i]-a[i-1];
inc(m);
b[m]:=a[i+1]-a[i];
end;
as(1,m);
for i:=1 to k do inc(s,b[i]);
writeln(s);
close(output);
close(input);
end.
