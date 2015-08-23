{$N+}
var a:array[1..100]of string;
c:array[1..100]of extended;
n,j,i:integer;
t:string;t1:extended;
begin
readln(n);
for i:=1 to n do
begin
readln(a[i]);
readln(c[i]);
end;
for i:=1 to n-1 do
for j:=i+1 to n do begin
if (c[i]<c[j]) then begin
t:=a[i];
t1:=c[i];
a[i]:=a[j];
c[i]:=c[j];
a[j]:=t;
c[j]:=t1;
end;
if (c[i]=c[j]) then
if (a[i,1]<a[j,1]) then begin
t:=a[i];
t1:=c[i];
a[i]:=a[j];
c[i]:=c[j];
a[j]:=t;
c[j]:=t1;
end;
end;
for i:=1 to n do
writeln(a[i]);
end.
