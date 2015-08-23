var i,s,n:longint;
st:string;
begin
assign(input,'p1.in');
assign(output,'p1.out');
reset(input);
rewrite(output);
readln(n);
str(n,st);
if st[length(st)]='5' then begin
while n mod 5=0 do begin
n:=n div 5;
inc(s);
end;
writeln(s);
end
else begin
for i:=1 to length(st) do
if st[i]='0' then inc(s);
writeln(s);
end;
close(input);
close(output);
end.