var str:string;
i:longint;
begin
assign(input,'num.in');
assign(output,'num.out');
reset(input);
rewrite(output);
readln(str);
for i:=length(str) downto 1 do write(str[i]);
close(input);
close(output);
end.