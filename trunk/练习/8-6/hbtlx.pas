var a,b,c:packed array[1..1000,1..2]of longint;
t,t1,i,j,n,m:longint;
e,d:packed array[1..1000]of boolean;
begin
while not(eoln) do begin
inc(n);
read(a[n,1],a[n,2]);
end;
readln;
while not(eoln) do begin
inc(m);
read(b[m,1],b[m,2]);
end;
for i:=1 to n do d[i]:=true;
for i:=1 to m do e[i]:=true;
for i:=1 to n do
for j:=i+1 to n do
if a[i,2]=a[j,2] then begin
inc(t);
d[j]:=false;
d[i]:=false;
a[i,1]:=a[i,1]+a[j,1];
a[i,2]:=a[i,2];
d[i]:=true;
if c[t,1]=0 then dec(t);
end;
for i:=1 to m do
for j:=i+1 to m do
if b[i,2]=b[j,2] then begin
inc(t);
e[j]:=false;
e[i]:=false;
b[i,1]:=b[i,1]+b[j,1];
b[i,2]:=b[i,2];
e[i]:=true;
if c[t,1]=0 then dec(t);
end;
for i:=1 to n do
for j:=1 to m do
if (a[i,2]=b[j,2])and(d[i])and(e[j]) then begin
inc(t);
d[i]:=false;
e[j]:=false;
c[t,1]:=a[i,1]+b[j,1];
c[t,2]:=a[i,2];
if c[t,1]=0 then dec(t);
end;
for i:=1 to n do
if d[i] then begin
inc(t);
c[t,1]:=a[i,1];
c[t,2]:=a[i,2];
if c[t,1]=0 then dec(t);
end;
for i:=1 to m do
if e[i] then begin
inc(t);
c[t,1]:=b[i,1];
c[t,2]:=b[i,2];
if c[t,1]=0 then dec(t);
end;
for i:=1 to t-1 do
for j:=i+1 to t do
if c[i,2]<c[j,2] then begin
t1:=c[i,2];
c[i,2]:=c[j,2];
c[j,2]:=t1;
t1:=c[i,1];
c[i,1]:=c[j,1];
c[j,1]:=t1;
end;
if t<>0 then
for i:=1 to t do write(c[i,1],' ',c[i,2],' ')
else writeln('0');
end.
