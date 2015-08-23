var i,s:longint;
a:array[1..4]of longint;
begin
for i:=1 to 4 do read(a[i]);
if a[1]>a[4] then begin
s:=s+a[4];
a[1]:=a[1]-a[4];
a[4]:=0;
end
else begin
s:=s+a[4];
a[1]:=0;
a[4]:=0;
end;
if a[2]>a[3] then begin
s:=s+a[3];
a[2]:=a[2]-a[3];
a[3]:=0;
end
else begin
s:=s+a[3];
a[3]:=0;
a[2]:=0;
end;
while (a[2]>=2)and(a[1]>0) do begin
s:=s+1;
a[2]:=a[2]-2;
a[1]:=a[1]-1;
end;
if (a[2]>=1)and(a[1]>=3) then begin
s:=s+1;
a[2]:=a[2]-1;
a[1]:=a[1]-3;
end
else if (a[2]>1) then
while a[2]>=2 do
begin
s:=s+1;
a[2]:=a[2]-2;
end
else if a[1]>=5 then
begin
s:=s+1;
a[1]:=a[1]-5;
end
else if a[1]<5 then begin
s:=s+1;
a[1]:=0;
end;
writeln(s-1);
end.





