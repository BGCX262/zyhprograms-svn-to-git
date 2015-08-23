var k,i,j,m,n,temp:longint;
a:array[0..100,0..100]of longint;
f:array[0..100,-1..99,-1..100]of longint;
function max(a,b:longint):longint;
begin
if a>b then exit(a)
else exit(b);
end;
begin
readln(m,n);
if(m=0)or(n=0) then begin writeln('0'); halt; end;
for i:=0 to m+1 do
for j:=0 to n+1 do
a[i,j]:=-1;
for i:=1 to m do
for j:=1 to n do
read(a[i,j]);
f[2,1,2]:=a[1,2]+a[2,1];
for k:=3 to n+m-2 do
for i:=1 to k-1 do
begin
if a[i,k-i+1]=-1 then continue;
for j:=i+1 to k do
begin
if a[j,k-j+1]=-1 then break;
if j-1=i then
begin
temp:=max(f[k-1,i-1,j],f[k-1,i-1,j-1]);
f[k,i,j]:=max(f[k-1,i,j],temp)+a[i,k-i+1]+a[j,k-j+1];
end;
if j-1>i then
begin
temp:=max(f[k-1,i-1,j-1],f[k-1,i-1,j]);
f[k,i,j]:=max(temp,max(f[k-1,i,j],f[k-1,i,j-1]))+a[i,k-i+1]+a[j,k-j+1];
end;
end;
end;
writeln(f[m+n-2,m-1,m]);
end. 
