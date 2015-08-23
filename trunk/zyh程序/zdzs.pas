var a:array[1..100]of string;
b:array[1..100]of integer;
n,j,i,h,k,t1,l:integer;t,ss:string;
begin
readln(n);
for i:=1 to n do begin
readln(a[i]);
b[i]:=length(a[i]);
end;
for i:=1 to n-1 do
for j:=i+1 to n do
if b[i]=b[j] then begin
if a[i]<a[j] then begin
t:=a[i];
t1:=b[i];
a[i]:=a[j];
b[i]:=b[j];
a[j]:=t;
b[j]:=t1;
end;
end
else begin
k:=0;h:=0;
if b[i]>b[j] then l:=b[i]
else l:=b[j];
while (k<b[i])and(h<b[j]) do
begin
if k<b[i] then inc(k);
if h<b[j] then inc(h);
if b[i]>b[j] then begin
if a[i][k]>a[j][k] then begin
t:=a[i];
t1:=b[i];
a[i]:=a[j];
b[i]:=b[j];
a[j]:=t;
b[j]:=t1;
end;end
else if b[j]>b[i] then
if a[i][k]<a[j][k] then begin
t:=a[i];
t1:=b[i];
a[i]:=a[j];
b[i]:=b[j];
a[j]:=t;
b[j]:=t1;
end
end;end;
ss:='';
for i:=1 to n do
ss:=ss+a[i];
writeln(ss);
end.
