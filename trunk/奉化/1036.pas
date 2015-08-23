var k,n,m1,x1,y1:qword;
a,b,c:array[1..1000]of qword;
i,j,n1,n2:longint;
x,y,s:string;
begin
readln(n,m1);
if n mod 2=1 then n:=n+1;
if m1 mod 2=1 then m1:=m1-1;
x1:=(m1-n)div 2+1;
str(n,x);
str(m1,y);
n1:=length(x);n2:=length(y);
if n1>n2 then n:=n1
else n:=n2;
for i:=1 to n1 do a[i]:=ord(x[n1-i+1])-48;
for i:=1 to n2 do b[i]:=ord(y[n2-i+1])-48;
k:=0;
for i:=1 to n do
begin
c[i]:=a[i]+b[i]+c[i];
c[i+1]:=c[i] div 10;
c[i]:=c[i] mod 10;
end;
if c[n+1]>0 then inc(n);
k:=0;
for i:=1 to n do begin
c[i]:=c[i]*x1+k;
k:=c[i]div 10;
c[i]:=c[i] mod 10;
end;
while k>0 do begin
inc(n);
c[n]:=k mod 10;
k:=k div 10;
end;
x1:=0;
for i:=n downto 1 do begin
y1:=(c[i]+x1*10) div 2;
s:=s+chr(y1+48);
x1:=(c[i]+x1*10)mod 2;
end;
while (length(s)<>1)and(s[1]='0') do delete(s,1,1);
writeln(s);
end.

