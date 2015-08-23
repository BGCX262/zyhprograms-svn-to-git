uses math;
var i,j,n,k:integer;
a:array[1..100000]of integer;
b:array[0..100000,1..2]of longint;
begin
read(n);
for i:=1 to n do read(a[i]);
b[1,1]:=a[1];
for i:=2 to n do begin
b[i,1]:=min(b[i-1,1],b[i-1,2])+a[i];
b[i,2]:=min(b[i-1,1],b[i-2,1]);
end;
k:=min(b[n-1,1],min(b[n,1],b[n,2]));
writeln(k);
end.

