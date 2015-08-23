var i,j,n,s:longint;
st:string;
begin
readln(n);
for i:=2 to n do begin
str(i,st);
for j:=1 to length(st) do
if st[j]='2' then inc(s);
end;
writeln(s);
end.