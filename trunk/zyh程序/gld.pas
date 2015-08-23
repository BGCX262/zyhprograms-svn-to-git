var
a,b:array[1..50] of integer;
n,m,i:integer;
he,min:longint;
procedure p(now,s,l:longint);
var i,k,g,ll:longint;
begin
if l>=min then exit;
if s>0 then
begin
for i:=now+1 to n do
if b[i]<>0 then begin
k:=b[i];
b[i]:=0;
g:=s-k;
ll:=l+abs(a[i]-a[now])*s;
p(i,g,ll);
b[i]:=k;
break;
end;
for i:=now-1 downto 1 do
if b[i]<>0 then begin
k:=b[i];
b[i]:=0;
g:=s-k;
ll:=l+abs(a[i]-a[now])*s;
p(i,g,ll);
b[i]:=k;
break;
end;
end else
if l<min then min:=l;
end;
begin
he:=0;
read(n,m);
for i:=1 to n do begin
read(a[i],b[i]);
if i<>m then he:=he+b[i]
else b[i]:=0;
end;
min:=maxlongint;
p(m,he,0);
write(min);
end.

