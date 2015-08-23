var a:array[0..10000]of longint;
i,j,x,n:longint;
begin
readln(n);
for i:=1 to n do read(a[i]);
a[0]:=-maxlongint;
for i:=2 to  n do  begin
j:=i-1;x:=a[i];
while x<a[j] do begin
a[j+1]:=a[j];
j:=j-1;
end;
a[j+1]:=x;
end;
for i:=1 to n do write(a[i],' ');
end.