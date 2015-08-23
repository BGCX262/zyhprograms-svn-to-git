var n,s:longint;
procedure asd(n:longint);
var i:longint;
begin
s:=s+n div 2;
for i:=1 to n div 2 do begin
asd(i);
end;
end;
begin
readln(n);
asd(n);
writeln(s+1);
end.
