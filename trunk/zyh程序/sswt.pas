var n,i,j:integer;
s:array[1..100]of integer;
a:array[1..100,1..100]of integer;
procedure search(m: integer);
var j,k:integer;
begin
if m>n then begin
write(s[1]);
for j:=2 to n do write(' ',s[j]);
writeln;halt
end
else
for j:=1 to 4 do begin
k:=1;
while (k<m)and(s[k]*a[m,k]<>j) do inc(k);
if (k>=m) then begin
s[m]:=j;
search(m + 1);
end;
end;
end;
begin
read(n);
for i:=1 to n do
for j:=1 to n do
read(a[i,j]);
search(1);
end.
