var i,k,s:longint;
begin
assign(input,'t2.in');
assign(output,'t2.out');
reset(input);
rewrite(output);
readln(k);
for i:=10000 to 30000 do
if ((i div 100)mod k=0)and(((i div 10)mod 1000)mod k=0)and(((i mod 10000)mod 1000)mod k=0) then
begin
inc(s);
writeln(i);
end;
if s=0 then writeln('No');
close(input);
close(output);
end.
