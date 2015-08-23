var n,m,i,j,l:longint;
a:array[0..1000]of boolean;
begin
readln(n,m);
for i:=0 to n-1 do a[i]:=true;
i:=-1;
while l<n do begin
while j<m do begin
i:=(i+1)mod n;
if a[i] then inc(j);
end;
l:=l+1;
j:=0;
if l=n then writeln(i+1);
a[i]:=false;
end;
end.