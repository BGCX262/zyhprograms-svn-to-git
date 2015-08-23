var i,j,n,w:longint;
a:array[1..1000]of longint;
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
procedure as(n,m:longint);
var s:string;
x,y:qword;
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
if not((s='1')or(s='0')) then write(s);
end;
begin
readln(n);
write('(a+b)^',n,'=');
i:=n+1;
j:=-1;
while j<n do begin
inc(j);
dec(i);
as(n,j);
if i=1 then write('a')
else if i>1 then write('a^',i);
if j=1 then write('b')
else if j>1 then write('b^',j);
if j<>n then write('+');
end;
end.