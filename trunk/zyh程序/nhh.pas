var n:integer;
n1:qword;
a,b,c:array[-100..100]of boolean;
procedure s(t:integer);
var j:integer;
begin
if t=n+1 then inc(n1);
for j:=1 to n do
if (a[j])and(b[t+j])and(c[t-j]) then begin
a[j]:=false;
b[t+j]:=false;
c[t-j]:=false;
s(t+1);
a[j]:=true;
b[t+j]:=true;
c[t-j]:=true;
end;
end;
begin
read(n);
fillchar(a,sizeof(a),true);
fillchar(b,sizeof(b),true);
fillchar(c,sizeof(c),true);
s(1);
write(n1);
end.
