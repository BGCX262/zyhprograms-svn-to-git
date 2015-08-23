var
i,j,k,m,n,max:longint;
a,f,g:array[0..10000] of longint;
hash:array[0..100000] of boolean;
begin
read(n);
for i:=1 to n do read(a[i]);
for i:=1 to n do
begin
max:=0;k:=0;fillchar(hash,sizeof(hash),false);
for j:=i-1 downto 1 do
if (a[j]>a[i])and(f[j]>max) then max:=f[j];
f[i]:=max+1;
end;
max:=0;k:=0;
for i:=1 to n do
if f[i]>max then
begin
max:=f[i];
end;
for i:=1 to n do
if f[i]=1 then g[i]:=1
else begin
fillchar(hash,sizeof(hash),false);
for j:=i-1 downto 1 do
if (f[i]=f[j]+1)and(a[j]>a[i])and(not hash[a[j]]) then
begin
g[i]:=(g[i]+g[j])mod 10000;
hash[a[j]]:=true;
end;
end;
fillchar(hash,sizeof(hash),false);
k:=0;
for i:=n downto 1 do
begin
if (f[i]=max)and(hash[a[i]]=false) then
begin
inc(k,g[i]);k:=k mod 10000;
hash[a[i]]:=true;
end;
end;
writeln(max,' ',k mod 10000);
end.