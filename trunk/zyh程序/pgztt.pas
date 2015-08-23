var a,b:array[1..3000] of longint;
i,j,n,p,m:longint;
procedure qsortb(l,r:longint);
var i,j,m,t:longint;
begin
i:=l; j:=r; m:=b[(i+j) div 2];
repeat
while b[i]>m do inc(i);
while b[j]<m do dec(j);
if i<=j then
begin
t:=b[i]; b[i]:=b[j]; b[j]:=t;
inc(i); dec(j);
end;
until i>j;
if l<j then qsortb(l,j);
if i<r then qsortb(i,r);
end;
begin
readln(n,m);
for i:=1 to n do readln(a[i]);
for i:=1 to m do readln(b[i]);
qsortb(1,m);
p:=m;
for i:=1 to n do
begin
for j:=1 to m do
if (b[j]>0) and (a[i]>b[j]) then
begin
dec(p);
b[j]:=0;
break;
end;
end;
writeln(p);
end.