var i,j,n,s:longint;
begin
assign(input,'t6.in');
assign(output,'t6.out');
reset(input);
rewrite(output);
readln(n);
for i:=1 to n div 2 do
begin
s:=0;
for j:=i to n do
begin
s:=s+j;
if s>n then break;
if s=n then writeln(i,' ',j);
end;
end;
close(input);
close(output);
end.
