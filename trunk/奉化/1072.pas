var a:array[1..10000]of longint;
w,i,n,m,j:longint;
x,y:qword;
s:ansistring;
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
begin
readln(n,m);
a[1]:=1;
w:=1;
for i:=n downto n-m+1 do asd(i);
for i:=m downto 2 do begin
x:=0;y:=0;s:='';
for j:=w downto 1 do begin
y:=(a[j]+x*10) div i;
s:=s+chr(y+48);
x:=(a[j]+x*10)mod i;
end;
while (length(s)<>1)and(s[1]='0') do delete(s,1,1);
for j:=1 to length(s) do a[length(s)-j+1]:=ord(s[j])-48;
w:=length(s);
end;
writeln(s);
end.