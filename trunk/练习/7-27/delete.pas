var st:string;
i,s,n:longint;
begin
assign(input,'delete.in');
assign(output,'delete.out');
reset(input);
rewrite(output);
readln(st);
readln(n);
while n>0 do
begin
if st[i]>st[i+1] then begin delete(st,i,1); i:=1;n:=n-1; end
else i:=i+1;
if i=length(st) then begin delete(st,i,1);i:=1;n:=n-1;end;
end;
while (st[1]='0')and(length(st)<>1) do delete(st,i,1);
writeln(st);
close(input);
close(output);
end.
