var n,i,k:longint;
begin
readln(n);
if n=5 then writeln('99999')
else begin
k:=n mod 5;
write('1');
for i:=1 to n-6 do write('0');
case k of
0:writeln('89999');
1:writeln('99998');
2:writeln('99989');
3:writeln('99899');
4:writeln('98999');
end;
end;
end.