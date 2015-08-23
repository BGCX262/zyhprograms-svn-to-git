var st:string;
s,n,m,l,i,j:longint;
a:array[1..10000]of longint;
begin
assign(input,'t1.in');
assign(output,'t1.out');
reset(input);
rewrite(output); 
readln(n);
readln(st);
readln(m);
l:=length(st);
for i:=1 to l do if (st[i]>='0')and(st[i]<='9') then a[i]:=ord(st[i])-48
else a[i]:=ord(st[i])+10-65;
for i:=1 to l do
begin
for j:=1 to l-i do
a[i]:=a[i]*n;
s:=s+a[i];
end;
i:=0;
while s>0 do begin
inc(i);
a[i]:=s mod m;
s:=s div m;
end;
for j:=i downto 1 do
if (a[j]>=0)and(a[j]<=9) then write(a[j])
else write(chr(55+a[j]));
close(input);
close(output);
end.
