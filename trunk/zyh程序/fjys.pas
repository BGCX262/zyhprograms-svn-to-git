var f:array[1..20000] of longint;
i,j,k,n:longint;
begin
readln(k);
fillchar(f,sizeof(f),0);
for i:=1 to   20000 do
begin
for j:=1 to i do
if (i mod j=0)  then inc(f[i]);
if f[i]=k then begin
writeln(i);
exit;
end;
end;
writeln('NO SOLUTION') ;
END.