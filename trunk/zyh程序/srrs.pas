const
n:array[1..12] of integer=(31,28,31,30,31,30,31,31,30,31,30,31);
var
y,m,d:integer;
function check:integer;
begin
if (y mod 4 = 0)and(m=2) then exit(1); exit(0);
end;
begin
readln(y,m,d);
inc(d,10000);
while d>n[m]+check do
begin
dec(d,n[m]+check); inc(m);
if m=13 then begin m:=1; inc(y); end;
end;
writeln(y,'-',m,'-',d);
end.