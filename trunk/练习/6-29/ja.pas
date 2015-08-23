var i,n:longint;
s:qword;
begin
assign(input,'ja.in');
assign(output,'ja.out');
reset(input);
rewrite(output);
readln(n);
for i:=1 to n do
s:=s+i;
write(s);
close(input);
close(output);
end.
