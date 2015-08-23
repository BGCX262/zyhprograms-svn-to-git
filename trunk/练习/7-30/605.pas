var k,n,i,l,j,s:longint;
a:array[1..10000]of longint;
begin
readln(k,n);
while n>0 do begin
inc(i);
a[i]:=n mod 2;
n:=n div 2;
end;
for j:=1 to i do begin
for l:=1 to j-1 do a[j]:=a[j]*k;
s:=s+a[j];
end;
writeln(s);
end.