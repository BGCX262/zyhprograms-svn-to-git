var n,t,i,j,k,s:longint;
t1:string;
m:array[1..10000]of string;
x:array[1..10000]of longint;
a:array[1..10000,1..6]of longint;
begin
readln(n);
for i:=1 to n do begin
readln(x[i]);
readln(m[i]);
for j:=1 to 5 do begin
read(a[i,j]);
a[i,6]:=a[i,6]+a[i,j];
end;
readln;
end;
for i:=1 to n do
for j:=1 to 5 do if a[i,j]<60 then begin
inc(s);
break;
end;
writeln(s);
for i:=1 to n-1 do
for j:=i+1 to n do
if a[i,6]<a[j,6] then begin
for k:=1 to 6 do begin
t:=a[i,k];
a[i,k]:=a[j,k];
a[j,k]:=t;
end;
t:=x[i];
x[i]:=x[j];
x[j]:=t;
t1:=m[i];
m[i]:=m[j];
m[j]:=t1;
end
else if a[i,6]=a[j,6] then
if a[i,1]<a[j,1] then begin
for k:=1 to 6 do begin
t:=a[i,k];
a[i,k]:=a[j,k];
a[j,k]:=t;
end;
t:=x[i];
x[i]:=x[j];
x[j]:=t;
t1:=m[i];
m[i]:=m[j];
m[j]:=t1;
end;
if n<20 then
for i:=1 to n do
writeln(x[i],' ',m[i],' ',a[i,1],' ',a[i,2],' ',a[i,3],' ',a[i,4],' ',a[i,5],' ',a[i,6])
else for i:=1 to 20 do
writeln(x[i],' ',m[i],' ',a[i,1],' ',a[i,2],' ',a[i,3],' ',a[i,4],' ',a[i,5],' ',a[i,6]);
end.
