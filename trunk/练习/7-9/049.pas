var n,m,i,j:integer;
t:string;
a:array[1..100]of string;
begin
readln(n,m);
for i:=1 to n do readln(a[i]);
for i:=1 to n-1 do
for j:=i+1 to n do
if (a[i]>a[j]) then
begin
t:=a[i];
a[i]:=a[j];
a[j]:=t;
end;
writeln(a[m]);
end.
