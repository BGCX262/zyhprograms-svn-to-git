var st,t:string;
i,j,l,s,n:longint;
begin
readln(st);
l:=length(st);
delete(st,l,1);
l:=l-1;
for i:=1 to l do if (st[i]>='A')and(st[i]<='Z') then
st[i]:=chr(ord(st[i])+32);
writeln(st);
i:=0;
WHILE i<=length(st) do  begin
inc(i);
if (st[i]=' ')and(length(st)>i) then
begin
j:=i+1;
while (st[j]=' ')and(j<length(st)) do
inc(j);
delete(st,i+1,j-i-1);
end;
end;
writeln(st);
i:=0;
WHILE i<=length(st) do begin
inc(i);
if (st[i]=st[i+1])and(st[i]>='a')and(st[i]<='z')and(i<=length(st)) then begin
j:=i;
s:=0;
while (st[j]=st[j+1])and(j<length(st)) do begin
inc(s);inc(j);
end;
t:=st[i]+chr(48+s+1);
delete(st,i,s+1);
insert(t,st,i)
end;
end;
writeln(st);
end.
