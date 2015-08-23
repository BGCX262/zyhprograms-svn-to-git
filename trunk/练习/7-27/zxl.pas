var dz,dj,i,n:longint;
a:array[1..10000]of longint;
begin
assign(input,'zxl.in');
assign(output,'zxl.out');
reset(input);
rewrite(output);
readln(n);
for i:=1 to n do read(a[i]);
if a[2]<a[1] then inc(dj);
if a[2]>a[1] then inc(dz);
for i:=2 to n-1 do
if (a[i]-a[i-1])*(a[i+1]-a[i])<0 then begin
if a[i+1]<a[i] then inc(dj);
if a[i+1]>a[i] then inc(dz);
end;
writeln('dz:',dz);
writeln('dj:',dj);
writeln('total:',dj+dz);
close(input);
close(output);
end.
