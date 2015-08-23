const x:array[1..4,1..2]of integer=((2,1),(1,2),(-1,2),(-2,1));
var a:array[1..100,1..2]of integer;
n,m:integer;
procedure pr(j:integer);
var i:integer;
begin
for i:=1 to j-1 do write('(',a[i,1],',',a[i,2],')');
writeln('(',a[j,1],',',a[j,2],')');
end;
procedure s(i:integer);
var j:integer;
begin
if (a[i-1,1]=n)and(a[i-1,2]=m) then begin
pr(i-1);halt;
end;
for j:=1 to n do
if (a[i-1,1]+x[j,1]>=0)and(a[i-1,1]+x[j,1]<=n)and
(a[i-1,2]+x[j,2]>=0)and(a[i-1,2]+x[j,2]<=m) then
begin
a[i,1]:=a[i-1,1]+x[j,1];
a[i,2]:=a[i-1,2]+x[j,2];
s(i+1);
a[i,1]:=0;a[i,2]:=0;
end;
end;
begin
read(n,m);
a[1,1]:=0;
a[1,2]:=0;
s(2);
end.
