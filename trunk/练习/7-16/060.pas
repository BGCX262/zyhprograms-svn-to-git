var a,b:array[1..10000]of longint;
x,y,k,l,s,t,n,m,i,j:longint;
begin
readln(n,m);
for i:=1 to n do read(a[i]);
for i:=1 to m do
begin
s:=0;
readln(x,y,l);
for j:=x to y do begin
inc(s);
b[s]:=a[j];
end;
for j:=1 to s-1 do
for k:=j+1 to s do
if b[j]>b[k] then begin
t:=b[j];
b[j]:=b[k];
b[k]:=t;
end;
writeln(b[l]);
end;
end.