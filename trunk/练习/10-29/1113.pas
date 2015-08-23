var a:array[1..7,1..2]of integer;
s,max,i,j:longint;
begin
for i:=1 to 7 do readln(a[i,1],a[i,2]);
for i:=1 to 7 do
if a[i,1]+a[i,2]>8 then begin
if max<a[i,1]+a[i,2] then max:=a[i,1]+a[i,2];
inc(s);
end;
if s=0 then writeln(0)
else for i:=1 to 7 do
if max=a[i,1]+a[i,2] then begin
writeln(i);
halt;
end;
end.