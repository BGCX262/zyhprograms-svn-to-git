var s,n,m,i,j,t:longint;
c:array[1..1000]of real;
t1:real;
a,w,b,d:array[1..1000]of longint;
begin
readln(m);
readln(n);
for i:=1 to n do read(w[i]);
for i:=1 to n do read(a[i]);
for i:=1 to n do b[i]:=i;
for i:=1 to n do c[i]:=a[i]/w[i];
for i:=1 to n-1 do
for j:=i+1 to n do
if c[i]<c[j] then begin
t:=a[i];
a[i]:=a[j];
a[j]:=t;
t:=w[i];
w[i]:=w[j];
w[j]:=t;
t:=b[i];
b[i]:=b[j];
b[j]:=t;
t1:=c[i];
c[i]:=c[j];
c[j]:=t1;
end;
for i:=1 to n do
if m>=w[i] then begin
d[b[i]]:=1;
s:=s+a[i];
m:=m-w[i];
end
else break;
for i:=1 to n do write(d[i],' ');
writeln;
writeln(s);
end.