var n,i,m,n1,w:longint;
a:array[1..1000]of longint;
b:array[1..1000]of longint;
procedure asd(k:longint);
var i,x:longint;
begin
x:=0;
for i:=1 to w do begin
b[i]:=b[i]*k+x;
x:=b[i] div 10;
b[i]:=b[i] mod 10;
end;
while x>0 do begin
inc(w);
b[w]:=x mod 10;
x:=x div 10;
end;
end;
begin
readln(n);
m:=n;
for i:=2 to 100000 do
if m-i>=0 then begin
m:=m-i;
inc(n1);
a[n1]:=i;
end
else break;
while m-n1>=0 do
begin
dec(m,n1);
for i:=n1 downto 1 do
a[i]:=a[i]+1;
end;
if m>0 then
for i:=n1 downto 1 do
if m-1>=0 then begin
a[i]:=a[i]+1;
m:=m-1;
end
else break;
w:=1;
b[w]:=1;
for i:=1 to n1 do asd(a[i]);
for i:=w downto 1 do write(b[i]);
end.
