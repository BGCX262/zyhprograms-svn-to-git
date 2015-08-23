var a,x:array[1..100]of longint;
c:array[1..1000000]of longint;
j,i,t,n,m,s:longint;
begin
readln(m,n);
for i:=1 to n do readln(x[i],c[x[i]]);
readln(t);
for i:=1 to t do readln(a[i]);
for i:=1 to t do begin
s:=0;
for j:=1 to a[i] do
inc(s,c[j]);
writeln(s);
end;
end.