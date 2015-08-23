var q,p,r,n,i:longint;
begin
assign(input,'t5.in');
assign(output,'t5.out');
reset(input);
rewrite(output);
p:=1;
readln(n);
for i:=1 to n do begin
r:=i;
while r mod 5=0 do begin
r:=r div 5;
dec(q);
end;
p:=p*r mod 10;
end;
if n=1 then r:=1
else r:=p*(1 shl ((q and 3)+4))mod 10;
writeln(r);
close(input);
close(output);
end.
