var t,i,j,t1:longint;
st:string;
a,b:array[1..255]of longint;
begin
assign(input,'p4.in');
assign(output,'p4.out');
reset(input);
rewrite(output);
readln(st);
for i:=1 to length(st) do
inc(a[ord(st[i])]);
for i:=1 to 255 do b[i]:=i;
for i:=1 to 254 do
for j:=i+1 to 255 do
if a[i]<a[j] then
begin
t:=a[i];
a[i]:=a[j];
a[j]:=t;
t1:=b[i];
b[i]:=b[j];
b[j]:=t1;
end
else if a[i]=a[j] then
if b[i]>b[j] then begin
t:=a[i];
a[i]:=a[j];
a[j]:=t;
t1:=b[i];
b[i]:=b[j];
b[j]:=t1;
end;
for i:=1 to 255 do
if a[i]<>0 then
writeln(chr(b[i]),' ',a[i]);
close(input);
close(output);
end.