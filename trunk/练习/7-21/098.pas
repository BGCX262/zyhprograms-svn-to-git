var a:array[1..1000]of longint;
max,i,m,n:longint;
begin
readln(n);
for i:=1 to n do begin
read(m);
inc(a[m]);
end;
for i:=1 to 1000 do if max<a[i] then max:=a[i];
for i:=1 to 1000 do if max=a[i] then begin
writeln(i);
writeln(max);
halt;
end;
end.
