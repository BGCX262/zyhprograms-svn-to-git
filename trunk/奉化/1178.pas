var n,m,sum,i:longint;
begin
readln(n,m);
for i:=0 to  m-1 do
sum:=sum+trunc(i*n/m);
writeln(sum);
end.