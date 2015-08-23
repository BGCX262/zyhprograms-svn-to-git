type hp=record
len:integer;
s:array[1..1000] of integer;
end;
var o:array[0..20000] of boolean;
a:array[1..5000,1..2] of longint;
c:array[1..5000] of hp;
n,i,j,k,max:longint;
sum:hp;
procedure Plus(a,b:hp;var c:hp);
var i,len:integer;
begin
fillchar(c,sizeof(c),0);
if a.len>b.len then len:=a.len
else len:=b.len;
for i:=1 to len do
begin
inc(c.s[i],a.s[i]+b.s[i]);
if c.s[i]>=10 then
begin
dec(c.s[i],10);
inc(c.s[i+1]);
end;
end;
if c.s[len+1]>0 then inc(len);
c.len:=len;
end;
begin
readln(n); max:=1;
for i:=1 to n do begin a[i,2]:=1; read(a[i,1]); end;
for i:=2 to n do
for j:=i-1 downto 1 do
begin
if (a[i,1]<a[j,1]) and (a[i,2]<a[j,2]+1) then a[i,2]:=a[j,2]+1;
if max<a[i,2] then max:=a[i,2];
end;
for i:=1 to n do
if a[i,2]=1 then begin c[i].s[1]:=1;c[i].len:=1; end
else begin
fillchar(o,sizeof(o),0);
for j:=i-1 downto 1 do
if (a[i,2]=a[j,2]+1) and not o[a[j,1]] and (a[i,1]<a[j,1]) then
begin
plus(c[i],c[j],c[i]); o[a[j,1]]:=true;
end;
end;
fillchar(o,sizeof(o),0);sum.s[1]:=0;sum.len:=1;
for i:=n downto 1 do
if (a[i,2]=max) and not o[a[i,1]] then begin plus(sum,c[i],sum); o[a[i,1]]:=true; end;
write(max,' ');
for j:=sum.len downto 1 do write(sum.s[j]);
writeln;
end.