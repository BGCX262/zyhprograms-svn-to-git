var st:string;
t:char;
j,i,l:longint;
begin
readln(st);
l:=length(st);
for i:=1 to l-1 do
for j:=i+1 to l do
if st[i]<st[j] then begin
t:=st[i];
st[i]:=st[j];
st[j]:=t;
end;
writeln('MAX:',st);
write('MIN:');
for i:=l downto 1 do if st[i]<>'0' then write(st[i]);
writeln;
end.