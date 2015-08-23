var a,b:array[1..2000]of longint;
i,j,t,n,m,s:longint;
begin
readln(n,m);
for i:=1 to n do readln(a[i]);
for i:=1 to m do readln(b[i]);
for i:=1 to n-1 do
for j:=i+1 to n do
if b[i]<b[j] then begin
t:=b[i];
b[i]:=b[j];
b[j]:=t;
end;
s:=m;
for i:=1 to n do
begin
for j:=1 to m do
if (b[j]>0) and (a[i]>b[j]) then
begin
dec(s);
b[j]:=0;
break;
end;
end;
writeln(s);
end.
