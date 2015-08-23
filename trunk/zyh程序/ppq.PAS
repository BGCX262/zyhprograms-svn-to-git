var ch:char;
w1,w2,l1,l2,i,i1,j,j1:longint;
a,b:array[1..10000,1..2]of longint;
begin
read(ch);
while ch<>'E' do begin
if ch='W' then
begin
inc(w1);
inc(w2)
end;
if ch='L' then
begin
inc(l1);
inc(l2);
end;
if ((w1>10)and(l1<w1-1))or((l1>10)and(w1<l1-1)) then begin
inc(i);
a[i,1]:=w1;
a[i,2]:=l1;
W1:=0;
l1:=0;
end;
if ((w2>20)and(l2<w2-1))or((l2>20)and(w2<l2-1)) then begin
inc(j);
b[j,1]:=w2;
b[j,2]:=l2;
w2:=0;
l2:=0;
end;
read(ch);
end;
inc(i);
inc(j);
a[i,1]:=w1;
a[i,2]:=l1;
b[j,1]:=w2;
b[j,2]:=l2;
for i1:=1 to i do writeln(a[i1,1],':',a[i1,2]);
writeln;
for j1:=1 to j do writeln(b[j1,1],':',b[j1,2]);
end.
end;
i:=0;
while i<=length(st) do begin
inc(i);
if st[i]='W' then h:=h+1
else d:=d+1;
if (((d>=11)or(h>=11))and(abs(d-h)>=2))or(i=length(st)) then begin
writeln(h,':',d);
h:=0;
d:=0;
end;
end;
i:=0;
h:=0;
d:=0;
writeln;
while i<=length(st) do begin
inc(i);
if st[i]='W' then h:=h+1
else d:=d+1;
if (((d>=21)or(h>=21))and(abs(d-h)>=2))or(i=length(st)) then begin
writeln(h,':',d);
h:=0;
d:=0;
end;
end;
end.
