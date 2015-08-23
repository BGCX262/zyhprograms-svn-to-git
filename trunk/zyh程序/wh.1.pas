var n,m,k,i,j:longint;
s:array[1..10000]of longint;
begin
readln(n,k);
for i:=1 to n do begin
read(j);
while j<>0 do begin
s[i]:=s[i]+1;
read(j);
end;
readln;
end;
for i:=1 to n do if s[i]>k then inc(m);
writeln(m);
end.


