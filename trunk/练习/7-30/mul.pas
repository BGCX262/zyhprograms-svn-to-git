var
a:array[1..100]of longint;
b:array[0..100,0..101]of longint;
n,i,j,k:longint;
begin
assign(input,'mul.in');reset(input);
assign(output,'mul.out');rewrite(output);
readln(n);
for i:=1 to n do
for j:=1 to n do
b[i,j]:=maxlongint;
for i:=1 to n do
begin
read(a[i]);
b[i,i-1]:=0;b[i,i]:=0;b[i,i+1]:=0;
end;
for i:=2 to n-2 do
b[i-1,i+1]:=a[i-1]*a[i]*a[i+1];
for i:=n-2 downto 1 do
for j:=i+2 to n do
for k:=i+1 to j-1 do
if b[i,j]>b[i,k]+a[i]*a[k]*a[j]+b[k,j] then
b[i,j]:=b[i,k]+a[i]*a[k]*a[j]+b[k,j];
writeln(b[1,n]);
close(input);close(output);
end.
