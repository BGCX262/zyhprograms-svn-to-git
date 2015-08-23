var n,w,i:longint;
a:packed array[1..100000]of longint;
procedure jc(k:longint);
var x,i:longint;
begin
x:=0;
for i:=1 to w do
begin
a[i]:=a[i]*k+x;
x:=a[i] div 10;
a[i]:=a[i] mod 10;
end;
while x>0 do
begin
w:=w+1;
a[w]:=x mod 10;
x:=x div 10;
end;
end;
begin
assign(input,'ni.in');
assign(output,'ni.out');
reset(input);
rewrite(output);
readln(n);
a[1]:=1;
w:=1;
for i:=1 to n do jc(i);
write(n,'!=');
for i:=w downto 1 do write(a[i]);
close(input);
close(output);
end.


