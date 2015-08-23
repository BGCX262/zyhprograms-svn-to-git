var s:string;
l,i,j,k,n:integer;
begin
readln(s);
l:=length(s);
for i:=1 to l do
for j:=i+1 to l do
for k:=j+1 to l do
if (s[i]='f')and(s[j]='b')and(s[k]='i') then n:=n+1;
write(n);
end.
