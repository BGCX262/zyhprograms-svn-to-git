program sd;
const a:array[1..9] of integer=(1,3,4,5,7,8,9,10,11);
var
s,p:string;
i,t:integer;
r:char;
w:array[1..1000] of integer;
begin
read(s);
for i:=1 to 9 do
w[i]:=ord(s[a[i]])-48;
for i:=1 to 9 do
t:=t+i*w[i];
t:=t mod 11;
if t=10 then r:='X';
if t<>10 then  r:=chr(t+48);
p:=copy(s,13,1);
if r=p then write('Right');
if r<>p then  write(copy(s,1,12),r);
end.