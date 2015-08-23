var
a:array[1..100000]of longint;
i,s,n:longint;
procedure sz(f:longint);
var i,j,t,k:longint;
begin
for i:=f to f+1 do begin
k:=i;
for j:=i+1 to n do
if a[k]>a[j] then
k:=j;
if k<>i then begin
t:=a[i];
a[i]:=a[k];
a[k]:=t;
end;
end;end;
begin
assign(input,'e2.in');
assign(output,'e2.out');
reset(input);
rewrite(output);
read(n);
for i:=1 to n do read(a[i]);
for i:=1 to n-1 do
begin
sz(i);
a[i+1]:=a[i]+a[i+1];
s:=s+a[i+1];
end;
writeln(s);
close(input);
close(output);
end.
