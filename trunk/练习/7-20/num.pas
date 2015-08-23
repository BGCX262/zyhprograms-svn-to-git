var i:longint;
st:string;
begin
assign(input,'num.in');
assign(output,'num.out');
reset(input);
rewrite(output);
readln(st);
for i:=length(st) downto 1 do write(st[i]);
writeln;
close(input);
close(output);
end.
