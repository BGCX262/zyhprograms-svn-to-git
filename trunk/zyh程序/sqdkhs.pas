var
total:double;
j,g,k,l,i:integer;
f:array[0..20,0..20]of int64;
begin
read(k,l);
for i:=0 to k-1 do
f[1,i]:=1;
for i:=2 to l do
for j:=0 to k-1 do
for g:=0 to k-1 do
if (g<>(j+1))and(g<>(j-1))then f[i,j]:=f[i,j]+f[i-1,g];
for i:=1 to k-1 do
total:=total+f[l,i];
writeln(total:0:0);
end.