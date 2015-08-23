var st:string;
i,j,s,max,max1:longint;
begin
readln(st);
while i<=length(st) do begin
inc(i);
if (st[i]<='9')and(st[i]>='0') then begin
j:=i;
while (st[j]<='9')and(st[j]>='0') do
inc(j);
val(copy(st,i,j-i),s);
if max<s then begin
max:=s;
max1:=i;
end;
end;
end;
writeln(max1);
end.
