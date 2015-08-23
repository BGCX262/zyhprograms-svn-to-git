var k,n,l,i,j:integer;
f:array[1..255]of integer;
s:string;
procedure print(i,j:integer);
var ii:integer;
begin
if (j=1)or(j=n)or(j=2+k) then
if (i=1)or((i=4)and(j<>2+k))or((i=7)and(j<>1))or((i=0)and(j=2+k))then
for ii:=1 to k+2 do write(' ')
else  begin
write(' ');
for ii:=1 to k do write('-');
write(' ');
end
else
if j<2+k then
begin
if ((i<4)and(i>0))or(i=7) then write(' ')
else write('|');
for ii:=1 to k do write(' ');
if (i=5)or(i=6) then write(' ')
else write('|');
end
else begin
if (i=4)or(i mod 2<>0) then write(' ')
else write('|');
for ii:=1 to k do write(' ');
if i=2 then write(' ')
else write('|');
end;
end;
begin
readln(k);
readln(s);
n:=k+k+3;
l:=length(s);
for i:=1 to l do f[i]:=ord(s[i])-48;
for j:=1 to n do
begin
print(f[1],j);
for i:=2 to l do
begin
write(' ');
print(f[i],j);
end;
writeln;
end;
end.
