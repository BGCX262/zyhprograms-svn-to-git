const c:array[0..6]of longint=(1,2,4,8,16,32,64);
var a:array[1..81]of boolean;
k,i,q:longint;
begin
k:=81;
for i:=1 to 81 do a[i]:=true;
while k>1 do
begin
i:=6;
while c[i]>k do dec(i);
while i>=0 do
begin
q:=c[i];
while not(a[q]) do inc(q);
a[q]:=false;
dec(i);
dec(k);
end;
end;
for i:=1 to 81 do if a[i] then writeln(i-1);
end.

