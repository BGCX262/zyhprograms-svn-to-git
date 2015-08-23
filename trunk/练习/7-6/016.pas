var a:array[1..12]of longint;
i,s,y,c:longint;
begin
for i:=1 to 12 do readln(a[i]);
for i:=1 to 12 do
begin
s:=s+300;
y:=round(a[i]/100)*100;
if s>=y then begin
s:=s-y;
c:=300-y;
end;
if a[i]>300 then begin writeln('-',i);
halt;
end;
end;
writeln(c*1.2+s:0:0);
end.