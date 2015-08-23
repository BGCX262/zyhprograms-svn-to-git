var s,s1:string;
n,m,i,w,w1,w2,j:longint;
x,y:qword;
a,b,c:array[1..1000]of longint;
procedure as;
var i,x:longint;
begin
if w1<w then w2:=w
else w2:=w1;
x:=0;
for i:=1 to w2 do begin
c[i]:=a[i]+b[i]+x;
x:=c[i] div 10;
c[i]:=c[i] mod 10;
end;
while x>0 do begin
inc(w2);
c[w2]:=x mod 10;
x:=x div 10;
end;
end;
procedure asd;
var i,k:longint;
begin
k:=0;
for i:=1 to w do begin
a[i]:=a[i]*n+k;
k:=a[i] div 10;
a[i]:=a[i] mod 10;
end;
while k>0 do begin
inc(w);
a[w]:=k mod 10;
k:=k div 10;
end;
end;
begin
readln(n,m);
readln(s);
w1:=1;
for i:=1 to length(s) do
if s[i]<>'0' then
begin
fillchar(a,sizeof(a),0);
a[1]:=ord(s[i])-48;
w:=1;
for j:=1 to length(s)-i do asd;
fillchar(c,sizeof(c),0);
as;
b:=c;
w1:=w2;
end;
while (c[w2]<>0) do begin
s:='';
x:=0;
y:=0;
for i:=w2 downto 1 do
begin
y:=(x*10+c[i]) div m;
x:=(x*10+c[i]) mod m;
s:=s+chr(y+48);
end;
while (s[1]='0')and(length(s)>1) do delete(s,1,1);
for i:=1 to length(s) do c[length(s)-i+1]:=ord(s[i])-48;
w2:=length(s);
s1:=chr(x+48)+s1;
end;
while (s1[1]='0')and(length(s1)>1) do delete(s1,1,1);
writeln(s1);
end.