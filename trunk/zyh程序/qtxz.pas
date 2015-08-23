program test;
var n,i,j:word;
a,f:array[1..1000,1..1000]of longword;
function min(a,b:longword):longword;
begin if a<b then exit(a) else exit(b);end;
begin
readln(n);
for i:=1 to n do begin for j:=1 to i do read(a[i,j]);readln;end;
fillchar(f,sizeof(f),$fe);
f[n,1]:=a[n,1];
for i:=2 to n do f[n,i]:=f[n,i-1]+a[n,i];
for i:=n-1 downto 1 do
begin
for j:=1 to i do f[i,j]:=min(f[i+1,j],f[i+1,j+1])+a[i,j];
f[i,i]:=min(f[i,i],f[i+1,1]+a[i,i]);
f[i,1]:=min(f[i,1],f[i+1,j+1]+a[i,1]);
f[i,1]:=min(f[i,1],f[i,i]+a[i,1]);
for j:=2 to i do f[i,j]:=min(f[i,j],f[i,j-1]+a[i,j]);
f[i,i]:=min(f[i,i],f[i,1]+a[i,i]);
for j:=i-1 downto 1 do f[i,j]:=min(f[i,j],f[i,j+1]+a[i,j]);
end;
writeln(f[1,1]);
end. 

