var i,j,kkk,yyy,n,m:integer;
boo:boolean;
a:array[1..100,1..10] of integer;
b,bb:array[0..1024] of boolean;
c,d,dd:array[1..11]of integer;
procedure fdq(k:integer);
var i,j,s:integer;
begin
if k>n then begin
s:=0;
for i:=1 to n do
inc(s,c[i]*d[i]);
dd:=d;
if bb[s] then begin
for j:=1 to n do
if a[yyy,j]=1 then dd[j]:=0 else
if a[yyy,j]=-1 then dd[j]:=1;
s:=0;
for i:=1 to n do
inc(s,c[i]*dd[i]);
if not b[s] then begin
b[s]:=true;
boo:=false;
end;
end;
end else begin
d[k]:=0;
fdq(k+1);
d[k]:=1;
fdq(k+1);
end;
end;
begin
readln(n);
readln(m);
for i:=1 to m do begin
for j:=1 to n do read(a[i,j]);
readln;
end;
fillchar(b,sizeof(b),false);
c[1]:=1;
for i:=2 to n do c[i]:=c[i-1]*2;
b[c[n]*2-1]:=true;
for kkk:=1 to 10000 do begin
boo:=true;
bb:=b;
for yyy:=1 to m do
fdq(1);
if b[0] then begin
writeln(kkk);
halt;
end;
if boo then begin
writeln('The patient will be dead.');
halt;
end;
end;
end.