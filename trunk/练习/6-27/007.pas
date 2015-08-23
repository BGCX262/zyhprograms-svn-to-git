var a:array[1..20,1..20]of longint;
b:array[1..20]of longint;
c:array[1..20]of boolean;
d:array[1..20]of boolean;
max:real;
i,j,n:longint;
procedure asd(i:integer);
var j:longint;g:real;
begin
if n<i then begin
g:=1;
for j:=1 to n do g:=g*b[j];
if g>max then max:=g;
exit;
end;
for j:=1 to n do
if (c[j])and(d[i]) then begin
c[j]:=false;
d[i]:=false;
b[j]:=a[i,j];
asd(i+1);
b[j]:=0;
c[j]:=true;
d[i]:=true;
end;end;
begin
readln(n);
for i:=1 to n do begin
for j:=1 to n do
read(a[i,j]);
readln;
end;
for i:=1 to n do begin c[i]:=true;
d[i]:=true;
end;
asd(1);
for i:=1 to n-1 do max:=max/100;
writeln(max:0:6);
end.

