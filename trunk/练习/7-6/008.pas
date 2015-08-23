var n,n1,y,y1,r,r1,i:longint;
function rq(i:longint):longint;
begin
case i of
1,3,5,7,8,10,12:rq:=31;
4,6,9,11:rq:=30;
2:if (n mod 4=0)and(n mod 100<>0)or(n mod 400=0) then rq:=29
else rq:=28;
end;
end;
begin
readln(n,y,r);
n1:=1990;y1:=1;r1:=1;
while (n<>n1)and(y<>y1)and(r<>r1) do
begin
inc(i);
inc(r);
if r>rq(y) then begin
r:=r-rq(y);
y:=y+1;
end;
if y>n then begin
y:=1;
n:=n+1;
end;
end;
case (i-1) mod 5 of
1,2,3:writeln('da yu');
4,0:writeln('shai wang');
end;
end.