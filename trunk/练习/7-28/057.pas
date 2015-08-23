var
a:array[1..1000]of integer;
m,n,sum:longint;
procedure dk(s,t:integer);
var
i:integer;
begin
if s=n then begin
inc(sum);
exit;
end;
for i:=0 to t do dk(s+1,t-i);
end;
begin
readln(n,m);
if n*2>m then writeln(0)
else begin
m:=m-2*n;
sum:=0;
dk(1,m);
writeln(sum);
end;
end.


