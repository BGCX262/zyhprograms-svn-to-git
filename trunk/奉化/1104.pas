var a,c:array[1..1000]of longint;
b:array[0..1000]of boolean;
i,n,l,s:longint;
begin
readln(n);
for i:=1 to n do read(a[i]);
for i:=0 to n-1 do b[i]:=true;
l:=n+1;
while l>1 do begin
dec(l);
if a[l]<>0 then begin
s:=0;
for i:=0 to n-1 do  begin
if b[i] then inc(s);
if (s=a[l])and(b[i+1]) then begin
b[i+1]:=false;
break;
end;
end;
c[l]:=i+1;
end
else begin
s:=0;
for i:=0 to n-1 do
if b[i] then begin
b[i]:=false;
break;
end;
c[l]:=i;
end;
end;
for i:=1 to n do write(c[i],' ');
end.