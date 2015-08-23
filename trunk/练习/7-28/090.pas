var a:array[1..10000]of longint;
s,i,k:longint;
st:string;
begin
readln(st);
for i:=1 to length(st) do
begin
if st[i]='(' then begin
s:=s+1;
a[s]:=i;
end;
if st[i]=')' then
if s=0 then begin k:=1;writeln(i,' you kuo hao');end
else begin
a[s]:=0;
s:=s-1;
end;
end;
for i:=1 to s do if a[s]<>0 then begin k:=1; writeln(a[i],' zuo kuo hao');end;
if k=0 then writeln('0');
end.
