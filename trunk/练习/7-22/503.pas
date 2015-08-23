var n,i:longint;
a:array[0..10000]of longint;
procedure sc(t:longint);
var i:longint;
begin
for i:=1 to t-1 do write(a[i],'+');
writeln(a[t]);
end;
procedure asd(s,t:longint);
var i:longint;
begin
if s=0 then begin
sc(t-1);
exit;
end;
for i:=1 to s do
if (a[t-1]<=i)and(i<n) then begin
a[t]:=i;
s:=s-a[t];
asd(s,t+1);
s:=s+a[t];
end;
end;
begin
readln(n);
asd(n,1);
end.
