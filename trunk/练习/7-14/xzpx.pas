var a:array[1..10000]of longint;
i,j,k,f,n,t:longint;
begin
readln(n);
for i:=1 to n do read(a[i]);
for i:=1 to n-1 do begin
k:=i;
for j:=i+1 to n do begin
if a[k]>a[j] then
k:=j;
if k<>i then begin
t:=a[i];
a[i]:=a[k];
a[k]:=t;
end;
end;end;
for i:=1 to n do write(a[i],' ');
end.