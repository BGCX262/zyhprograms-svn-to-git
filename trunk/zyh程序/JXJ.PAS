program sd;
var n,i,j,t:longint;
a,b,c,d,e:array[1..10000] of longint;
begin
read(n);
for i:=1 to n do
begin
read(a[i],b[i],c[i]);
d[i]:=a[i]+b[i]+c[i];
e[i]:=i;
end;
for i:=1 to n-1 do
for j:=i+1 to n do
begin
if d[i]<d[j] then begin
t:=d[i];d[i]:=d[j];d[j]:=t;
t:=e[i];e[i]:=e[j];e[j]:=t;
t:=a[i];a[i]:=a[j];a[j]:=t;end;
if (d[i]=d[j])and(a[i]<a[j]) then begin
t:=d[i];d[i]:=d[j];d[j]:=t;
t:=e[i];e[i]:=e[j];e[j]:=t;
t:=a[i];a[i]:=a[j];a[j]:=t;end;
if (d[i]=d[j])and(a[i]=a[j])and(e[i]>e[j]) then begin
t:=d[i];d[i]:=d[j];d[j]:=t;
t:=e[i];e[i]:=e[j];e[j]:=t;
t:=a[i];a[i]:=a[j];a[j]:=t;end;
end;
for i:=1 to 5 do
writeln(e[i],' ',d[i]);
end.