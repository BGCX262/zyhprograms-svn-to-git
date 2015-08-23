var
i,s,l,r,x,s1,s2,sum:longint;
a:array[1..50000] of boolean;
begin
read(l,r);
s:=1;
sum:=0;
fillchar(a,sizeof(a),true);
while s<trunc(sqrt(r)) do
begin
inc(s);
if a[s] then
begin
s1:=0;
s2:=0;
x:=r;
while x>1 do
begin
x:=x div s;
if x<>0 then inc(s2);
end;
x:=l-1;
while x>1 do
begin
x:=x div s;
if x<>0 then inc(s1);
end;
if l>s then sum:=sum+s2-s1
else sum:=sum+s2-s1-1;
for i:=2 to trunc(sqrt(r)) div s do
a[s*i]:=false;
end;
end;
writeln(sum);
end.