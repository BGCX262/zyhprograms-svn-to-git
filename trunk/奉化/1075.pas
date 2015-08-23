type arr=array[1..10000]of longint;
var a,b,c:arr;
i,n,w1,w2,w:longint;
procedure asd;
var i,k:longint;
begin
if w>w1 then w2:=w
else w2:=w1;
k:=0;
for i:=1 to w2 do begin
c[i]:=k+a[i]+b[i];
k:=c[i] div 10;
c[i]:=c[i] mod 10;
end;
while k>0 do begin
w2:=w2+1;
c[w2]:=k mod 10;
k:=k div 10;
end;
end;
begin
readln(n);
if n=1 then begin
writeln('1');
halt;
end;
if n=2 then begin
writeln('2');
halt;
end;
a[1]:=1;w:=1;
b[1]:=2;w1:=1;
for i:=3 to n do begin
asd;
a:=b;
w:=w1;
b:=c;
w1:=w2;
end;
for i:=w1 downto 1 do write(b[i]);
end.

