var st:string;
k,s:qword;
n,i:longint;
t:boolean;
function s2(n:qword):qword;
var i:longint;
begin
s2:=1;
for i:=1 to n do s2:=s2*2 mod 70207;
end;
function s1(n:qword):qword;
var i:longint;
begin
s1:=1;
for i:=2 to n do s1:=s1*i mod 70207;
end;
begin
readln(n);
k:=trunc(sqrt(2*n+0.25)-0.5)mod 70207;
for i:=1 to 1000000000 do
begin
inc(s,i);
if s>n then break;
if s=n then begin
t:=true;
end;
end;
if t then begin
s:=trunc(s2(k-1)*s1(k))mod 70207;
str(s,st);
if length(st)>=5 then writeln(st)
else begin
for i:=1 to 5-length(st) do write('0');
writeln(st);
end;
end
else begin
s:=trunc(n-k*(k+1)/2)mod 70207;
s:=trunc(s*(2*s-1)*s2(k-1)*s1(k-1))mod 70207;
str(s,st);
if length(st)>=5 then writeln(st)
else begin
for i:=1 to 5-length(st) do write('0');
writeln(st);
end;
end;
end.
