var i,j,k,m,n,half,s:integer;
a:array [1..64,1..64] of integer;
b:array[1..64]of boolean;
begin
readln(m);
n:=1;
for i:=1 to m do n:=n*2;
k:=1; a[1,1]:=1; half:=1;
while k<=m do
begin
for i:=1 to half do
for j:=1 to half do a[i,j+half]:=a[i,j]+half;
for i:=1 to half do
for j:=1 to half do
begin
a[i+half,j]:=a[i,j+half];
a[i+half,j+half]:=a[i,j]
end;
half:=half*2; k:=k+1
end;
for i:=2 to n do begin
write('<',i-1,'>');
fillchar(b,sizeof(b),true);
s:=0;
for j:=1 to n do
if (b[j]) then begin
write(j,'-',a[j,i]);
inc(s);
b[j]:=false;
b[a[j,i]]:=false;
if s<>n div 2 then write(',');
end;
writeln;
end;
end.