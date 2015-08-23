var a:array[1..7]of longint;
n,m,y,r,x,i:longint;
function asd(c:longint):longint;
begin
case c of
1,3,5,7,8,10,12:asd:=31;
4,6,9,11:asd:=30;
2:if (n mod 4=0)and(n mod 100<>0)or(n mod 400=0) then asd:=29
else asd:=28;
end;
end;
begin
assign(input,'p3.in');
assign(output,'p3.out');
reset(input);
rewrite(output);
readln(m);
n:=1900;
y:=1;
r:=1;
x:=1;
while (n<>1900+m) do begin
inc(r);
inc(x);
if r>asd(y) then
begin
r:=r-asd(y);
inc(y);
end;
if x>7 then x:=x-7;
if y>12 then begin
inc(n);
y:=1;
end;
if r=13 then inc(a[x]);
end;
for i:=1 to 7 do write(a[i],' ');
close(input);
close(output);
end.
