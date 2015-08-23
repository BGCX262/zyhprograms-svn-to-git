const t1:array[0..9]of integer=(1,1,2,6,4,2,2,4,2,8);
var i,n,s:longint;
st:string;
function f(n:string):longint;
var ff,g,j:longint;
begin
ff:=1;
while length(n)>1 do
begin
ff:=ff*t1[ord(n[length(n)])-48];
if odd(ord(n[length(n)-1])) then g:=4
else g:=6;
ff:=(ff*g)mod 10;
if n[1]>='5' then n:='0'+n;
for j:=1 to length(n)-1 do
n[j]:=chr((((ord(n[j])-48)*2)mod 10)+ord(n[j+1]>='5')+48);
delete(n,length(n),1);
end;
f:=(t1[ord(n[1])-48]*ff)mod 10;
end;
begin
readln(n);
for i:=2 to n do
begin
str(i,st);
s:=s+f(st);
end;
writeln(s+1);
end.