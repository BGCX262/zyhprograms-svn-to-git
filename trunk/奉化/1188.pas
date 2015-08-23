var i,n,w:longint;
a:array[1..100]of longint;
procedure asd(k:longint);
var x,i:longint;
begin
x:=0;
for i:=1 to w do begin
a[i]:=a[i]*k+x;
x:=a[i] div 10;
a[i]:=a[i] mod 10;
end;
while x>0 do begin
inc(w);
a[w]:=x mod 10;
x:=x div 10;
end;
end;
begin
readln(n);
w:=1;
a[w]:=1;
for i:=1 to n-1 do asd(55);
asd(36);
for i:=w downto 1 do write(a[i]);
end.
