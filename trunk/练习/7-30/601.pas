var j,i,p,q,n,m,s,t,t1,t2:longint;
a,b:array[1..21]of longint;
begin
readln(m,n);
readln(p);
for i:=1 to p do begin
read(a[i]);
if i mod 2=1 then t1:=t1+a[i]
else t2:=t2+a[i];
end;
readln(q);
for i:=1 to q do read(b[i]);
i:=0;
while i<p do
begin
inc(i);
t:=0;
if i mod 2=0 then
begin
for j:=1 to i do
if j mod 2=0 then
t:=t+a[j];
s:=s-t*a[i+1];
end;
end;
i:=q;
t:=0;
while i>1 do begin
dec(i);
t:=0;
if i mod 2=0 then
begin
for j:=q downto i do
if j mod 2=0 then
t:=t+b[j];
s:=s-t*b[i-1];
end;
end;
writeln(s+(t1*(t2+n)));
end.
