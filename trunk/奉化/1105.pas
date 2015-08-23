var a:array[1..100]of longint;
sum,x,n,m:qword;
i:longint;
begin
readln(m);
readln(x);
while x<>0 do begin
inc(n);
a[n]:=x;
readln(x);
end;
for i:=1 to n do x:=x+(a[i]-1);
for i:=1 to n-1 do x:=x+1;
x:=m-x;
sum:=1;
for i:=x downto x-n+1 do sum:=sum*i;
writeln(sum);
end.