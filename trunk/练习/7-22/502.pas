var w,v:array[1..10000]of longint;
n,i,j,s,m,t:longint;
begin
readln(m,n);
for i:=1 to n do read(v[i]);
for i:=1 to n do read(w[i]);
for i:=1 to n-1 do
for j:=i+1 to n do
if v[i]<v[j] then begin
t:=v[i];
v[i]:=v[j];
v[j]:=t;
t:=w[i];
w[i]:=w[j];
w[j]:=t;
end;
i:=0;
while m>0 do begin
inc(i);
for j:=1 to w[i] do if m>0 then
begin
m:=m-1;
s:=s+v[i];
end
else break;
end;
writeln(s);
end.
