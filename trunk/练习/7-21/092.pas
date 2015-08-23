var n,j,i,k:longint;
st:string;
a:array[1..10000]of longint;
begin
readln(st);
for i:=1 to length(st) do
if (st[i]>='0')and(st[i]<='9') then begin
inc(n);
val(st[i],a[n]);
end;
i:=0;
while i<=n do begin
inc(i);
if (a[i]<a[i+1]) then begin
j:=i;
while (a[j]<a[j+1])and(j<=n) do inc(j);
end
else if (a[i]>a[i+1]) then begin
j:=i;
while (a[j]>a[j+1])and(j<=n) do inc(j);
end;
for k:=i to j do if a[k]<>0 then write(a[k],' ');
writeln;
if j<>n then i:=j-1
else break;
end;
end.
