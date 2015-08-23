var st:string;
i,j,s,k:longint;
begin
readln(st);
while i<=length(st) do
begin
inc(i);
if (st[i]>='0')and(st[i]<='9') then begin
j:=i;
while (st[j]>='0')and(st[j]<='9')and(st[j+1]>='0')and(st[j+1]<='9')and(j<=length(st)) do
inc(j);
for k:=i to j do write(st[k]);
writeln;
delete(st,i,j-i+1);
inc(s);
end;
end;
writeln(s);
end.
