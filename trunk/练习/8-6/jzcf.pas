var a,b,c:array [1..100,1..100]of longint;
i,j,m,n,r,k,s,l:longint;
begin
readln(m,n,r);
for i:=1 to m do
for j:=1 to n do read(a[i,j]);
for i:=1 to n do
for j:=1 to r do read(b[i,j]);
for i:=1 to m do
for j:=1 to r do
begin
k:=0;s:=0;l:=0;
while (k<=m)and(l<=r) do begin
inc(k);
inc(l);
s:=s+a[i,k]*b[l,j];
end;
c[i,j]:=s;
end;
writeln(m,' ',r);
for i:=1 to m do begin
for j:=1 to r do write(c[i,j],' ');
writeln;
end;
end.
