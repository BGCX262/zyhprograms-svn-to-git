var n,i,j,s:longint;
begin
assign(input,'1086.in');
assign(output,'1086.out');
rewrite(output);
reset(input);
readln(n);
for i:=1 to n div 2 do
begin
s:=0;
for j:=i to n do
begin
s:=s+j;
if s=n then begin
writeln(i,' ',j);
break;
end;
if s>n then break;
end;
end;
close(input);
close(output);
end.
