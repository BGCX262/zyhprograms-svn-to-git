var s,i,n:longint;
begin
assign(input,'p2.in');
assign(output,'p2.out');
reset(input);
rewrite(output);
readln(n);
if n mod 2=1 then begin
for i:=1 to n-1 do
if i mod 2=0 then inc(s,i);
writeln(s);
end
else begin
for i:=1 to n do
if n mod i=0 then inc(s,i);
writeln(s);
end;
close(input);
close(output);
end.