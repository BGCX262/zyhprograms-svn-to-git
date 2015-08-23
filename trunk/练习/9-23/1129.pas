var a:array[1..15,1..2]of longint;
f:array[0..9]of longint;
b:array[0..100,0..100]of boolean;
n1,k1,n:string;
s:extended;
i,j,p,k:longint;
begin
readln(n1);
i:=1;
while n1[i]<>' ' do begin
n:=n+n1[i];
i:=i+1;
end;
for j:=i+1 to length(n1) do k1:=k1+n1[j];
val(k1,k);
for i:=1 to k do begin
readln(a[i,1],a[i,2]);
b[a[i,1],a[i,2]]:=true;
end;
for p:=0 to 9 do
for i:=0 to 9 do
for j:=0 to 9 do
begin
if (i=j)or(i=p)or(j=p) then continue;
if (b[i,p])and(b[p,j]) then b[i,j]:=true;
end;
for i:=0 to 9 do
for j:=0 to 9 do
if b[i,j] then inc(f[i]);
s:=1;
for i:=1 to length(n) do
s:=s*(f[ord(n[i])-48]+1);
writeln(s:0:0);
end.