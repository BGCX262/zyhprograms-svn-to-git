var a:array[1..100,1..2]of string;
b:array[1..100]of string;
i,j,k,l,n:longint;
begin
readln(n);
for i:=1 to n do begin
readln(a[i,1]);
readln(a[i,2]);
if a[i,2]='SAME' then b[i]:=a[i,1];
end;
for i:=1 to n do
if a[i,2]='DOWN' then begin
inc(k);
j:=k;
while b[j]<>'' do inc(j);
b[j]:=a[i,1];
end;
j:=0;
for i:=1 to n do
if a[i,2]='UP' then begin
inc(j);
l:=j+k;
while b[l]<>'' do inc(l);
b[l]:=a[i,1];
end;
for i:=1 to n do writeln(b[i]);
end.
