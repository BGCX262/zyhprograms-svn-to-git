var st:array[1..500]of string;
n,c,t,s,x,y,i:longint;
begin
readln(n);
for i:=1 to n do readln(st[i]);
c:=1;
for i:=1 to n do
if (st[i]>='0')and(st[i]<='9') then begin
val(st[i],t,s);
case c of
1:y:=y+t;
2:x:=x+t;
3:y:=y-t;
4:x:=x-t;
end;
writeln('(',x,',',y,')');
end
else if st[i]='right' then if c<>4 then c:=c+1
else c:=1
else if st[i]='left' then if c=1 then c:=c+3
else if c=2 then c:=1
else if c=3 then c:=2
else if c=4 then c:=3;
end.
