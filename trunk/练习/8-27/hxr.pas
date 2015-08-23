var 
n,k,l,l1,i,j,temp:longint; 
a:array[1..10000]of longint; 
begin 
read(n,k); 
for i:=1 to n do read(a[i]); 
for i:=1 to k do 
begin 
l:=n; 
while a[l-1]>a[l] do dec(l); 
l1:=n; 
while a[l-1]>a[l1] do dec(l1); 
temp:=a[l-1];a[l-1]:=a[l1];a[l1]:=temp; 
for j:=l to (n+l) div 2 do 
begin 
temp:=a[j];a[j]:=a[n+l-j];a[n+l-j]:=temp; 
end; 
end; 
write(a[1]); 
for i:=2 to n do write(' ',a[i]); 
end. 
 
