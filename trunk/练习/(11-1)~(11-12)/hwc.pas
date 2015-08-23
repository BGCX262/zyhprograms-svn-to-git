var c:array[0..5000,0..5000]of longint;
i,j,m:longint;
x:ansistring;
begin
readln(m);
readln(x);
for i:=1 to m do
for j:=1 to m do
if x[i]=x[m-j+1] then c[i,j]:=c[i-1,j-1]+1
else if c[i-1,j]>=c[i,j-1] then c[i,j]:=c[i-1,j]
else c[i,j]:=c[i,j-1];
writeln(m-c[m,m]);
end.
