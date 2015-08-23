var a:array[1..100,1..2]of longint;
b:array[1..100,1..100]of real;
mincost,closed:array[1..100]of real;
sum,min:real;
i,n,j,k:longint;
begin
readln(n);
for i:=1 to n do readln(a[i,1],a[i,2]);
for i:=1 to n do
for j:=i+1 to n do begin
b[i,j]:=sqrt(sqr(a[i,1]-a[j,1])+sqr(a[i,2]-a[j,2]));
b[j,i]:=sqrt(sqr(a[i,1]-a[j,1])+sqr(a[i,2]-a[j,2]));
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
sum:=sum+min;
mincost[k]:=0;
for j:=1 to n do
if (mincost[j]>b[k,j])and(mincost[j]<>0) then begin
mincost[j]:=b[k,j];
closed[j]:=k;
end;
end;
writeln(sum:0:2);
end.