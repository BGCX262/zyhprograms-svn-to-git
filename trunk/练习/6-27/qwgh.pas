var a,c:array[1..1000]of qword;
b:array[1..1000]of boolean;
i,j,k,s,t,m,l,sum,good:integer;
begin
readln(l);
readln(s,t,m);
for i:=1 to m do begin
read(a[i]);
b[a[i]]:=true;
end;
i:=1;
while i<l do begin
k:=0;
for j:=s to t do begin
if b[j]=false then
begin
inc(k);
c[k]:=j;
end;end;
if k=0 then  good:=t
else
good:=c[k];
i:=i+good;
if b[i] then inc(sum);
end;
writeln(sum+1);
end.
