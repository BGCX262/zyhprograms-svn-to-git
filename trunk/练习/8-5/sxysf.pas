var a:array[0..10000]of boolean;
i,j,l,n,m1,m2:longint;
begin
readln(n,m1,m2);
for i:=0 to n-1 do a[i]:=true;
i:=-1;
while l<n do
begin
if l mod 2=0 then
while j<m1 do begin
i:=(i+1)mod n;
if a[i] then inc(j);
end
else while j<m2 do begin
if i=0 then i:=(n-1)mod n
else i:=(i-1)mod n;
if a[i] then inc(j);
end;
l:=l+1;
a[i]:=false;
j:=0;
if l=n then writeln(i+1);
end;
end.
