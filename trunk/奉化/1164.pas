var a:array[1..1000,1..3]of longint;
max,min:real;
closed,mincost:array[1..1000]of real;
b:array[1..1000,1..1000]of real;
i,j,n,m,k:longint;
begin
readln(n);
for i:=1 to n do readln(a[i,1],a[i,2],a[i,3]);
for i:=1 to n do
for j:=i+1 to n do
begin
b[i,j]:=sqrt(sqr(a[i,1]-a[j,1])+sqr(a[i,2]-a[j,2]))-a[i,3]-a[j,3];
b[j,i]:=sqrt(sqr(a[i,1]-a[j,1])+sqr(a[i,2]-a[j,2]))-a[i,3]-a[j,3];
end;
for i:=1 to n do
begin
mincost[i]:=b[1,i];
closed[i]:=1;
end;
for i:=2 to n do
begin
min:=maxlongint;
for j:=1 to n do
if (mincost[j]<min)and(mincost[j]<>0) then begin
min:=mincost[j];
k:=j;
end;
if max<min then max:=min;
mincost[k]:=0;
for j:=1 to n do
if (mincost[j]>b[k,j])and(mincost[j]<>0) then begin
mincost[j]:=b[k,j];
closed[j]:=k;
end;
end;
if max=trunc(max) then writeln(trunc(max))
else writeln(trunc(max)+1);
end.

