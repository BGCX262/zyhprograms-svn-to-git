var n,k,i,j:longint;
a:array[0..100]of integer;
begin
readln(n);
for i:=1 to n do begin
read(k);
inc(a[k]);
end;
for i:=0 to 100 do
for j:=1 to a[i] do write(i,' ');
end.