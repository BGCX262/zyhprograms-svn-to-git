var n,m,i,j,l:longint;
a:array[0..10000]of boolean;
begin
readln(m,n);
for i:=0 to m-1 do a[i]:=true;
i:=-1;
while l<m do
begin
while j<n+1 do
begin
i:=(i+1)mod m;
if a[i] then j:=j+1;
end;
a[i]:=false;
l:=l+1;
if l=m then writeln(i+1);
j:=0;
end;
end.