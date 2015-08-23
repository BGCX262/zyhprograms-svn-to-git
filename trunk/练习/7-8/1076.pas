program t1(input,output);
var n,i,j,s,m,l:longint;
st:string;
a:array[1..10000]of longint;
begin
assign(input,'1076.in');
assign(output,'1076.out');
reset(input);
rewrite(output);
readln(n);
readln(st);
readln(m);
l:=length(st);
for i:=1 to l do
if n<10 then a[i]:=ord(st[i])-48
else if (st[i]>='0')and(st[i]<='9') then a[i]:=ord(st[i])-48
else a[i]:=ord(st[i])-55;
for i:=1 to l do begin
for j:=1 to l-i do
a[i]:=a[i]*n;
s:=s+a[i];
end;
i:=0;
while s<>0 do
begin
inc(i);
a[i]:=s mod m;
s:=s div m;
end;
for j:=i downto 1 do if a[j]<10 then write(a[j])
else write(chr(a[j]+55));
close(input);
close(output);
end.
