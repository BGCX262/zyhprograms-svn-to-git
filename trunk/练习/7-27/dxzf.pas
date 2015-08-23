var st:string;
i:longint;
begin
assign(input,'dxzf.in');
assign(output,'dxzf.out');
reset(input);
rewrite(output);
readln(st);
for i:=length(st) downto 1 do write(st[i]);
close(input);
close(output);
end.
