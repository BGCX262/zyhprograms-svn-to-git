var n,k,i,j,p:longint;
a:array[1..100000,1..3]of longint;
long:array[1..1000]of longint;
begin
readln(n,k);
for i:=k downto 1 do begin
readln(a[i,1],a[i,2],a[i,3]);
long[i]:=a[i,2]-a[i,1]+1;
end;
for i:=1 to 10 do
begin
p:=i;
for j:=1 to k do
if (a[j,3]<p-long[j])and(p<=a[j,2]) then dec(p,long[j])
else if (p>=a[j,1])and(p<a[j,3]+1) then inc(p,long[j])
else if (a[j,3]<p)and(p<=a[j,3]+long[j]) then p:=p+a[j,1]-a[j,3]-1;
writeln(p);
end;
end.