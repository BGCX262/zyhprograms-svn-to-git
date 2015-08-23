var n,m:qword;
begin
readln(m);
n:=trunc(sqrt(m*2))-1;
if (n*(n+1) div 2<m)and(m<=(n+1)*(n+2) div 2) then writeln(m-(n+1)*n div 2)
else writeln(m-(n+1+1)*(n+1) div 2);
end.

