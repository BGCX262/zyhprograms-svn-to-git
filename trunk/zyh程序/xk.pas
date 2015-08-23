var i,n,m,k:integer;
a:array[0..300] of byte;
l:array[0..300,1..300] of integer;
f:array[0..300,0..300] of integer;
r:array[0..300] of integer;
t:array[0..300] of integer;
procedure fdq(k:integer);
var i,j,s,min,max:integer;
begin
t[k]:=1;
for i:=1 to r[k] do begin
fdq(l[k,i]);
inc(t[k],t[l[k,i]]);
end;
f[k,1]:=a[k];
for i:=1 to r[k] do
for s:=t[k]+t[l[k,i]] downto 2 do begin
if s-t[k]>1 then max:=s-t[k] else max:=1;
if s-1<t[l[k,i]] then min:=s-1 else min:=t[l[k,i]];
for j:=max to min do
if (f[k,s-j]>0) and (f[l[k,i],j]+f[k,s-j]>f[k,s])
then f[k,s]:=f[l[k,i],j]+f[k,s-j];
end;
end;
begin
readln(n,m);
fillchar(r,sizeof(r),0);
fillchar(f,sizeof(f),0);
for i:=1 to n do begin
readln(k,a[i]);
inc(r[k]);
l[k,r[k]]:=i;
end;
a[0]:=1;
fdq(0);
writeln(f[0,m+1]-1);
end. 