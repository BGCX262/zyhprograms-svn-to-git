var c,b:array[0..1000,0..1000]of longint;
x,y,s:string;
n,i,j,m:longint;
procedure asd(i,j:longint);
begin
if b[i,j]=1 then begin
s:=x[i]+s;
if (i-1>=0)and(j-1>=0) then asd(i-1,j-1);
end
else if b[i,j]=2 then
begin
if (i-1>=0) then asd(i-1,j);
end
else if b[i,j]=3 then
begin
if (j-1>=0) then asd(i,j-1);
end;
end;
begin
readln(x);
readln(y);
n:=length(x);
m:=length(y);
for i:=1 to n do
for j:=1 to m do
if x[i]=y[j] then begin
c[i,j]:=c[i-1,j-1]+1;
b[i,j]:=1;
end
else if c[i-1,j]>=c[i,j-1] then begin
c[i,j]:=c[i-1,j];
b[i,j]:=2;
end
else begin
c[i,j]:=c[i,j-1];
b[i,j]:=3;
end;
for i:=1 to m do
if c[n,i]=c[n,m] then begin
asd(n,i);
writeln(s);
s:='';
end;
writeln(c[n,m]);
end.