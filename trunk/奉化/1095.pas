var st:string;
n,i,j:longint;
s,s1:qword;
begin
readln(n);
str(n,st);
for i:=1 to length(st) do
if st[i]>='4' then st[i]:=chr(ord(st[i])-1);
for i:=1 to length(st) do
begin
s:=ord(st[i])-48;
for j:=1 to length(st)-i do s:=s*9;
s1:=s1+s;
end;
writeln(s1);
end.