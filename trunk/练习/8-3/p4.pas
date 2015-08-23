var n:longint;
procedure asd(n:longint;a,b,c:char);
begin
if n=1 then writeln(n,':',a,'->',c)
else begin
asd(n-1,a,c,b);
writeln(n,':',a,'->',c);
asd(n-1,b,a,c);
end;
end;
begin
readln(n);
asd(n,'A','B','C');
end.