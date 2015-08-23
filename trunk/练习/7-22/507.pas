var a:array[1..100]of integer;
i,j,k,s:integer;
begin
for i:=1 to 6 do
read(a[i]);
s:=s+a[6];
a[6]:=0;
for i:=1 to a[5] do begin
for j:=1 to 11 do
if a[1]>0 then
dec(a[1])
else
for k:=1 to a[5] do begin
inc(s);
a[5]:=0;
break;
end;
inc(s);
dec(a[5]);
end;
if (a[2]>4)and(a[4]>0) then
while a[2]>4 do
begin
dec(a[2],5);
inc(s);
dec(a[4]);
end
else begin
inc(s,a[4]);
a[4]:=0;
end;
for i:=1 to a[3] do
if a[3]>3 then begin
dec(a[3],4);
inc(s);
end
else if a[3]=3 then
if a[2]>0 then
if a[1]>4 then begin
dec(a[1],5);
dec(a[2]);
a[3]:=0;
inc(s);
break;
end
         else begin
         dec(a[2]);
         a[3]:=0;
         a[1]:=0;
         inc(s);
         break;
         end
         else begin
          a[3]:=0;
          inc(s);
         break;
         end
               else if a[3]=2 then
               if a[2]>2 then
               if a[1]>5 then begin
               dec(a[1],6);
               dec(a[2],3);
               a[3]:=0;
               inc(s);
               break;
               end
               else begin
               dec(a[2],3);
               a[3]:=0;
               a[1]:=0;
               inc(s);
               break;
               end
               else begin
               a[3]:=0;
               inc(s);
               break;
               end
               else if a[3]=1 then
               if a[2]>4 then
               if a[1]>6 then begin
               dec(a[1],7);
               dec(a[2],5);
               a[3]:=0;
               inc(s);
               break;
               end
               else begin
               dec(a[2],5);
               a[3]:=0;
               a[1]:=0;
               inc(s);
               break;
               end
               else begin
               a[3]:=0;
               inc(s);
               break;
               end;
if (a[2]<9)and(a[2]<>0) then begin
inc(s);
a[2]:=0;
end
else
while a[2]>8 do
if a[2]>8 then begin
dec(a[2],9);
inc(s);
end
else begin
a[2]:=0;
inc(s);
break;
end;
if (a[1]<36)and(a[1]<>0) then begin
inc(s);
a[1]:=0;
end
else
while a[1]>8 do
if a[1]>8 then begin
dec(a[1],9);
inc(s);
end
else begin
a[1]:=0;
inc(s);
break;
end;
writeln(s);
end.
