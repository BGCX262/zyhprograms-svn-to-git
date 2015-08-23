var w,w1,w2,i,j,a2,b2,x,y,n,m:longint;
s:string;
x1:qword;
a,c,b:array[1..10000]of longint;
procedure asd(k:longint);
var i,x:longint;
begin
x:=0;
for i:=1 to w do
begin
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
procedure asdf;
var k,i:longint;
begin
k:=0;
for i:=1 to w do begin
a[i]:=a[i]*x+k;
k:=a[i] div 10;
a[i]:=a[i] mod 10;
end;
while k>0 do begin
inc(w);
a[w]:=k mod 10;
k:=k div 10;
end;
end;
procedure asdfg;
var k,i:longint;
begin
k:=0;
for i:=1 to w1 do begin
b[i]:=b[i]*y+k;
k:=b[i] div 10;
b[i]:=b[i] mod 10;
end;
while k>0 do begin
inc(w1);
b[w1]:=k mod 10;
k:=k div 10;
end;
end;
procedure as(n,m:longint);
var x,y:qword;
i,j:longint;
begin
if m=0 then exit;
a[1]:=1;
w:=1;
s:='';
for i:=n downto n-m+1 do asd(i);
for i:=m downto 2 do begin
x:=0;y:=0;s:='';
for j:=w downto 1 do begin
y:=(a[j]+x*10) div i;
s:=s+chr(y+48);
x:=(a[j]+x*10)mod i;
end;
for j:=1 to length(s) do a[length(s)-j+1]:=ord(s[j])-48;
while (length(s)<>1)and(s[1]='0') do delete(s,1,1);
end;
if (s='') then
for j:=w downto 1 do s:=s+chr(a[j]+48);
end;
begin
readln(n,x,y,m);
a2:=n+1-m;
b2:=-1+m;
as(n,b2);
a[1]:=1;
w:=1;
for i:=1 to a2 do asdf;
b[1]:=1;
w1:=1;
for i:=1 to b2 do asdfg;
for i:=1 to w do begin x1:=0;
for j:=1 to w1 do begin
x1:=a[i]*b[j]+x1 div 10+c[i+j-1];
c[i+j-1]:=x1 mod 10;end;
c[i+j]:=x1 div 10;end;
w2:=i+j;
while (c[w2]=0) and (w2>1) do w2:=w2-1;
a:=c;
w:=w2;
w1:=length(s);
fillchar(b,sizeof(b),0);
fillchar(c,sizeof(c),0);
for i:=1 to w1 do b[w1-i+1]:=ord(s[i])-48;
for i:=1 to w do begin x1:=0;
for j:=1 to w1 do begin
x1:=a[i]*b[j]+x1 div 10+c[i+j-1];
c[i+j-1]:=x1 mod 10;end;
c[i+j]:=x1 div 10;end;
w2:=i+j;
while (c[w2]=0) and (w2>1) do w2:=w2-1;
for i:=w2 downto 1 do write(c[i]);
end.

