var a:array[1..1000]of real;
j,n,i,k,c:longint;
st:string;
procedure pop(var top:longint);
begin
a[top]:=0;dec(top);
end;
begin
readln(st);
i:=0;
while i<=length(st) do
begin
inc(i);
if st[i]<>'@' then
begin
if st[i] in ['0'..'9'] then
begin
j:=j+1;
k:=i;
while (st[k] in ['0'..'9']) do inc(k);
val(copy(st,i,k-i),n,c);
a[j]:=n;
i:=k;
end
else
case st[i] of
'/':begin
a[j-1]:=a[j-1]/a[j];
pop(j);
end;
'+':begin
a[j-1]:=a[j-1]+a[j];
pop(j);
end;
'-':begin
a[j-1]:=a[j-1]-a[j];
pop(j);
end;
'*':begin
a[j-1]:=a[j-1]*a[j];
pop(j);
end;
end;
end
else break;
end;
writeln(round(a[1]*100)/100:0:2);
end.




