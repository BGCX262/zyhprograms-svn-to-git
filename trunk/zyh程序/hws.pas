type
num=array[1..10000]of integer;
var
a:string;
b:num;
i,j,k,n:longint;
ci:integer;
procedure init;
begin
readln(a);
for i:=1 to length(a)do
if a[i]in['0'..'9']then val(a[i],b[i])
else b[i]:=ord(a[i])-55;
end;
function pan:boolean;
begin
pan:=true;
for i:=1 to (k div 2) do
pan:=pan and(b[i]=b[k-i+1]);
end;
procedure jia;
var i,jin:longint;p:num;
begin
fillchar(p,sizeof(p),0);
for i:=1 to k do
p[i]:=b[i]+b[k-i+1];
for i:=1 to k do
begin
p[i+1]:=p[i+1]+p[i] div n;
p[i]:=p[i]mod n;
end;
if p[k+1]<>0 then k:=k+1;
b:=p;
end;
begin
readln(n);
init;
k:=length(a);
ci:=0;
repeat
ci:=ci+1;
jia;
until (pan)or(ci=31);
if ci=31 then writeln('Impossible!')
else writeln('STEP=',ci);
end.
