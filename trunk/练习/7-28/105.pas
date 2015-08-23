var a:array[1..100]of boolean;
q,max,s,i,j,n:longint;
begin
readln(n);
for i:=1 to 100 do a[i]:=true;
for i:=1 to n do begin
read(j);
a[j]:=false;
end;
for i:=1 to 100 do
if i mod 2=0 then
if a[i] then
begin
s:=0;
for j:=i to 100 do
if j mod 2=0 then
if a[j] then
inc(s)else break;
if max<s then begin
max:=s;
q:=i;
end;
end;
for i:=1 to 100 do
if i mod 2=1 then
if a[i] then
begin
s:=0;
for j:=i to 100 do
if j mod 2=1 then
if a[j] then
inc(s)else break;
if max<s then begin
max:=s;
q:=i;
end;
end;
writeln(q,' ',max);
end.

