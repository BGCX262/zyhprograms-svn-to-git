var a,b:array[1..50] of longint;
n,m,i,d,min:longint;
procedure p(step,d,l:longint);
var i,k,l2:longint;
begin
if (l<min)and(d<=0) then begin
min:=l;
exit;
end;
for i:=step+1 to n do
if b[i]<>0 then begin
k:=b[i];
b[i]:=0;
l2:=l+abs(a[i]-a[step])*d;
p(i,d-k,l2);
b[i]:=k;
break;
end;
for i:=step-1 downto 1 do
if b[i]<>0 then begin
k:=b[i];
b[i]:=0;
l2:=l+abs(a[i]-a[step])*d;
p(i,d-k,l2);
b[i]:=k;
break;
end;
end;
begin
readln(n,m);
for i:=1 to n do begin
readln(a[i],b[i]);
if i<>m then d:=d+b[i]
else b[i]:=0;
end;
min:=maxlongint;
p(m,d,0);
write(min);
end.
