var s:array[1..100]of string;
f,z,y,n,s1,i:integer;
begin
readln(n);
f:=1;
for i:=1 to n do readln(s[i]);
for i:=1 to n do
if length(s[i])=1 then begin
s1:=ord(s[i][1])-48;
if f=1 then begin
y:=y+s1;
writeln('(',z,',',y,')');
end
else if f<1 then begin
z:=z-s1;
writeln('(',z,',',y,')');
end
else begin
z:=z+s1;
writeln('(',z,',',y,')');
end;
end
else
if s[i]='right' then f:=f+1
else f:=f-1;
end.
