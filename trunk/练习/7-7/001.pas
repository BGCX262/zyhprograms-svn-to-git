var n1,n2,n3,i:integer;x,y:string;
a,b,c:array[1..1000]of integer;
begin
readln(x);
readln(y);
n1:=length(x);n2:=length(y);
for i:=n1 downto 1 do a[n1-i+1]:=ord(x[i])-ord('0');
for i:=n2 downto 1 do b[n2-i+1]:=ord(y[i])-ord('0');
i:=1;
while i<=n1 do
begin
if a[i]<b[i] then begin
a[i]:=a[i]+10;
a[i+1]:=a[i+1]-1;
end;
c[i]:=a[i]-b[i];
inc(i);
end;
n3:=i;
while (c[n3]=0)and(n3>0) do n3:=n3-1;
for i:=n3 downto 1 do write(c[i]);
end.