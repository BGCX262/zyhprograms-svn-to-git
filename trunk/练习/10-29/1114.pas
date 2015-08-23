var st:string;
a:array[1..10000]of char;
i,j,k,s,s1,n:longint;
procedure asd(i:longint);
begin
if i*2<=2*n-1 then asd(i*2);
if i*2+1<=2*n-1 then asd(i*2+1);
write(st[ord(a[i])-47]);
end;
begin
readln(s);
n:=1;
for i:=1 to s do
n:=n*2;
for i:=n to 2*n-1 do read(a[i]);
k:=s;
for i:=1 to s do
begin
k:=k-1;
s1:=1;
for j:=1 to k do s1:=s1*2;
for j:=s1 to s1*2-1 do
if a[j*2]=a[j*2+1] then a[j]:=a[j*2]
else a[j]:='2'
end;
st:='BIF';
asd(1);
end.