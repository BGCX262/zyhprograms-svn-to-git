var
i,j,n,k,max,temp:longint;
s,t,f:array[0..2000] of longint;
begin
assign(input,'hunger.in');
assign(output,'hunger.out');
reset(input);
rewrite(output);
readln(n);
for i:=1 to n do
read(s[i],t[i]);
for i:=1 to n-1 do
for j:=i to n do
if s[i]>s[j] then
begin
temp:=s[i]; s[i]:=s[j]; s[j]:=temp;
temp:=t[i]; t[i]:=t[j]; t[j]:=temp;
end;
for i:=1 to n do
begin
k:=0;
for j:=0 to s[i]-1 do
if k<f[j] then k:=f[j];
if k+t[i]-s[i]+1>f[t[i]] then
f[t[i]]:=k+t[i]-s[i]+1;
end;
max:=0;
for i:=0 to 2000 do
if f[i]>max then
max:=f[i];
writeln(max);
close(input);
close(output);
end.
