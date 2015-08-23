var khm:string;
a:array[1..1000,1..2]of longint;
s,n,i,v:longint;
st:array[1..1000]of string;
begin
readln(khm);
readln(n);
for i:=1 to n do readln(st[i]);
for i:=1 to n do
begin
v:=pos(' ',st[i]);
delete(st[i],1,v);
v:=pos(' ',st[i]);
val(copy(st[i],1,v-1),a[i,1]);
delete(st[i],1,v);
val(copy(st[i],1,length(st[i])),a[i,2]);
end;
writeln(khm);
for i:=1 to n do
s:=s+a[i,1]*a[i,2];
if s<=100 then writeln('20')
else if s<=1000 then writeln(s*0.15)
else if s<=2000 then writeln(s*0.1)
else writeln('0');
end.