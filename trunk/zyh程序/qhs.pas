var
a1,a2,p,i,o,j,s:longint;
begin
readln(a1,a2); s:=0;
for i:=a1 to a2 do begin
p:=1; o:=1;
for j:=2 to trunc(sqrt(i)) do
if i mod j=0 then p:=p+j+(i div j);
if p>i then for j:=2 to trunc(sqrt(p)) do
if p mod j=0 then o:=o+j+(p div j);
if (o=i) then inc(s);
end;
writeln(s);
end.