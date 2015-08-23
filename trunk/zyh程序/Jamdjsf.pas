const z:array[1..26]of char=('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z');
var s,t,w,i,s1,j:longint;
a,c:array[0..26]of char;
begin
readln(s,t,w);
for i:=1 to w do read(c[i]);
a:=c;
repeat
i:=w+1;
repeat
dec(i);
until ((a[i]>=z[s])and(a[i]<z[t]))or(i<=0);
if i=0 then halt;
a[i]:=succ(a[i]);
for j:=i+1 to w do
a[j]:=succ(a[j-1]);
if a[w]<=z[t] then
begin
for j:=1 to w do write(a[j]);
writeln;
s1:=s1+1;
end;
until s1>=5;
end.
