var a,b:array[1..1000]of integer;
s1:string;
s2,l,i,j,x:longint;
begin
readln(s1);
readln(s2);
l:=length(s1);
for i:=1 to l do a[i]:=ord(s1[i])-48;
for i:=1 to l do
begin
b[i]:=(x*10+a[i]) div s2;
x:=(x*10+a[i])mod s2;
end;
j:=1;
while (b[j]=0)and(j<l) do inc(j);
for i:=j to l do write(b[i]);
end.
