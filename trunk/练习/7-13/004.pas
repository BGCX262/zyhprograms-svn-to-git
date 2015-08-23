type arr=array[0..1000] of integer;
var
i,j,k,l,n,m:longint;
s:ansistring;
a,c:arr;
procedure  chu(var a:arr);
var
t,y,u:longint;
begin
y:=0;
for i:=a[0] downto 1 do
begin
if a[i]+y*10>1 then
begin
c[i]:=(a[i]+y*10) div 2;
y:=(a[i]+y*10) mod 2;
end
else
begin
c[i]:=0;
y:=a[i];
end;
end;
if c[a[0]]=0 then
c[0]:=a[0]-1
else
c[0]:=a[0];
a:=c;
end;
begin
readln(s);
m:=1;
a[0]:=length(s);
for i:=1 to length(s) do
a[i]:=ord(s[length(s)-i+1])-ord('0');
while not odd(a[1]) do
begin
chu(a);
m:=m+1;
end;
writeln(m);
end.