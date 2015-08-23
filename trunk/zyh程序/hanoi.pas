var a:array[1..100000]of longint;
i,n,w:longint;
procedure asd;
var i,x:longint;
begin
x:=0;
for i:=1 to w do
begin
a[i]:=a[i]*2+x;
x:=a[i] div 10;
a[i]:=a[i] mod 10;
end;
while x>0 do
begin
inc(w);
a[w]:=x mod 10;
x:=x div 10;
end;
end;
begin
assign(input,'hanoi.in');
assign(output,'hanoi.out');
reset(input);
rewrite(output);
readln(n);
a[1]:=1;
w:=1;
for i:=1 to n do asd;
a[1]:=a[1]-1;
asd;
for i:=w downto 1 do write(a[i]);
close(input);
close(output);
end.
