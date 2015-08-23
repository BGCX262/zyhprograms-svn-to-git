var n,m,k,i,j,p,q,max,sum,i2,j2,s,i1,j1:longint;
a:array[1..25,1..25]of longint;
t:boolean;
begin
readln(n,m,k);
for i:=1 to n do
for j:=1 to m do begin
read(a[i,j]);
if a[i,j]<>0 then inc(p);
end;
while p<>0 do
begin
max:=0;
inc(q);
for i:=1 to n do
for j:=1 to m do
if a[i,j]>max then begin
max:=a[i,j];
i2:=i;
j2:=j;
end;
a[i2,j2]:=0;
p:=p-1;
if q=1 then begin
s:=s+i2+1;
sum:=sum+max;
if i2=1 then
begin
if s+1>k then
begin
writeln(0);
halt;
end;
end
else
if s+i2>k then begin
writeln(0);
halt;
end;
end
else begin
s:=s+abs(i2-i1)+abs(j2-j1)+1;
sum:=sum+max;
if i2=1 then
begin
if s+1>k then
begin
writeln(sum-max);
halt;
end;
end
else
if s+i2>k then begin
writeln(sum-max);
halt;
end;
end;
i1:=i2;
j1:=j2;
end;
writeln(sum);
end.
