var
n,l,oil,i,j:longint;
a,b:array[1..10000000]of longint;
ok,can:boolean;
begin
readln(n,l);
for i:=1 to n do
begin
readln(a[i],b[i]);
l:=l-a[i];
end;
a[1]:=l;
for i:=n+1 to 2*n-1 do
begin
a[i]:=a[i-n];
b[i]:=b[i-n];
end;
can:=false;
i:=1;
while i<=n do
begin
ok:=true;
oil:=b[i];
for j:=1 to n-1 do
if a[i+j]<=oil then oil:=oil-a[i+j]+b[i+j]
else begin
ok:=false;
break;
end;
if ok then begin
if can then write(' ');
write(i);
can:=true;
inc(i);
end
else i:=i+j;
end;
if not can then write(-1);
end.

