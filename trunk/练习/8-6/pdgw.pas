var a:array[1..10000,1..16]of longint;
b:array[1..16]of boolean;
c:array[1..16]of longint;
s,n,i,j:longint;
function ss(n:longint):boolean;
var i,s1,s2:longint;
begin
s1:=0;
s2:=0;
if n=0 then begin
ss:=false;
exit;
end;
for i:=1 to n do
if c[i]=0 then inc(s1)
else inc(s2);
if s1>=s2+1 then ss:=true
else ss:=false;
end;
procedure asd(step,s1,s2:longint);
var i:longint;
begin
if (step=2*n+1)and(s1=0)and(s2=0) then begin
inc(s);
for i:=1 to 2*n do a[s,i]:=c[i];
end;
for i:=0 to 1 do
if i=0 then begin
if (s1>0)and(b[step]) then begin
b[step]:=false;
c[step]:=i;
s1:=s1-1;
asd(step+1,s1,s2);
s1:=s1+1;
b[step]:=true;
end;
end
else if i=1 then
if (s2>0)and(b[step])and(ss(step-1)) then begin
b[step]:=false;
s2:=s2-1;
c[step]:=i;
asd(step+1,s1,s2);
s2:=s2+1;
b[step]:=true;
end;
end;
begin
readln(n);
for i:=1 to 2*n do b[i]:=true;
asd(1,n,n);
writeln(s);
for i:=1 to s do begin
for j:=1 to n*2 do write(a[i,j],' ');
writeln;
end;
end.