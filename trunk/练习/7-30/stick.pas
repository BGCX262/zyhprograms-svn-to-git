var k,n,t,i,j,p,s:longint;
l,w,a,b:array[1..1000]of longint;
begin
assign(input,'stick.in');
assign(output,'stick.out');
reset(input);
rewrite(output);
readln(n);
for i:=1 to n do read(a[i],b[i]);
for i:=1 to n-1 do
for j:=i+1 to n do
if a[i]<a[j] then begin
t:=a[i];
a[i]:=a[j];
a[j]:=t;
t:=b[i];
b[i]:=b[j];
b[j]:=t;
end;
k:=1;l[1]:=a[1];w[1]:=b[1];
for i:=2 to n do
begin
p:=0;
for j:=1 to k do
if (l[j]>=a[i])and(w[j]>=b[i]) then
if p=0 then p:=j
else if (l[j]<l[p])and(w[j]<w[p]) then p:=j;
if p=0 then begin inc(k);l[k]:=a[i];w[k]:=b[i];end
else begin l[p]:=a[i];w[p]:=b[i];end;
end;
writeln(k);
close(input);
close(output);
end.
