var n,m,i,k,x,y,t,j:longint;
a:array[1..10000]of integer;
begin
readln(n);
readln(m);
for i:=1 to n do read(a[i]);
for k:=1 to m do
begin
x:=n-1;
while (a[x]>a[x+1]) do dec(x);
y:=n;
while (a[x]>a[y]) do dec(y);
t:=a[x];
a[x]:=a[y];
a[y]:=t;
for i:=x+1 to n-1 do
for j:=i+1 to n do
if a[i]>a[j] then begin
t:=a[i];
a[i]:=a[j];
a[j]:=t;
end;
end;
for i:=1 to n-1 do write(a[i],' ');
writeln(a[n]);
end.