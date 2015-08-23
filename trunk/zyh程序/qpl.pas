var i,n,s:integer;
a:array[1..100]of boolean;
b:array[1..100]of integer;
procedure asd(step:integer);
var i:integer;
begin
if step=n+1 then begin
for i:=1 to n do write(b[i],' ');
writeln;
exit;
end;
for i:=1 to n do
if (a[i]) then begin
a[i]:=false;
b[step]:=i;
asd(step+1);
a[i]:=true;
end;
end;
begin
read(n);
for i:=1 to n do
a[i]:=true;s:=0;
asd(1);
end.
