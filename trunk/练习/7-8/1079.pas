program t2(input,output);
var k,i,s:longint;
begin
assign(input,'1079.in');
assign(output,'1079.out');
reset(input);
rewrite(output);
readln(k);
for i:=10000 to 30000 do
if ((i mod 1000)mod k=0)and(((i div 10) mod 1000)mod k=0)and((i div 100)mod k=0)
 then begin
 writeln(i);
 inc(s);
 end;
 if s=0 then writeln('No');
close(input);
close(output);
end.
