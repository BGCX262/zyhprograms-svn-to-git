var a:array[0..10000,0..2] of longint;
father:array[0..10000] of longint;
i,j,k,m,n,total:longint;
procedure qsort(l,r:longint);
var i,j,k:longint;x,y:longint;
begin
k:=l+trunc(random(r-l));
i:=l;j:=r;x:=a[k][0];
repeat
while a[i,0]<x do i:=i+1;
while a[j,0]>x do j:=j-1;
if i<=j then
begin a[0]:=a[i];a[i]:=a[j];a[j]:=a[0];i:=i+1;j:=j-1;end;
until i>j;
if l<j then qsort(l,j);
if i<r then qsort(i,r);
end;
function getfather(v:longint):longint;
begin
if v=father[v] then exit(v)
else begin
father[v]:=getfather(father[v]);
getfather:=father[v];end;
end;
procedure merge(x,y:longint);
begin
x:=getfather(x);
y:=getfather(y);
father[x]:=y;
end;
function judge(x,y:longint):boolean;
begin
if getfather(x)=getfather(y) then exit(true) else exit(false);
end;
begin
readln(n,m,k);
for i:=1 to m do readLN(a[i,1],a[i,2],a[i,0]);
qsort(1,m);
for i:=1 to n do father[i]:=i;
i:=1;j:=1;total:=0;
while j<=n-k do begin
if getfather(a[i,1])<>getfather(a[i,2]) then begin
merge(a[i,1],a[i,2]);
total:=total+a[i,0];
i:=i+1;j:=j+1;
end else i:=i+1;
end;
writeln(total);
end.