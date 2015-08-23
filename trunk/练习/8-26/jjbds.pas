var i,s,n:longint;
b:packed array[-26000..26000]of boolean;
a:array[1..26]of integer;
procedure asd(step,s:longint);
var i:integer;
begin
if step=n+1 then begin
b[s]:=true;
exit;
end;
for i:=0 to 1 do
if i=0 then asd(step+1,s+a[step+1])
else asd(step+1,s-a[step+1]);
end;
begin
readln(n);
for i:=1 to n do read(a[i]);
asd(1,a[1]);
for i:=-26000 to 26000 do if b[i] then inc(s);
writeln(s);
end.

