var k,i,n,j,l:longint;
a:array[0..99]of boolean;
t:boolean;
function s1(m:longint):boolean;
var i,s:longint;
begin
s:=0;
s1:=false;
for i:=m to n-1 do if a[i] then inc(s);
if s<3 then s1:=true;
end;
function s2(m:longint):boolean;
var i,s:longint;
begin
s:=0;
s2:=false;
for i:=m downto 0 do if a[i] then inc(s);
if s<3 then s2:=true;
end;
begin
readln(n);
for i:=0 to n-1 do a[i]:=true;
i:=-1;t:=true;
while l<n do begin
if t then
while j<3 do begin
i:=(i+1)mod n;
if a[i] then inc(j);
end
else
while j<3 do begin
i:=(i-1)mod n;
if a[i] then inc(j);
end;
l:=l+1;
j:=0;
a[i]:=false;
if (s1(i))and(t) then begin
t:=false;
i:=n;
end
else
if (s2(i))and(not(t)) then begin
t:=true;
i:=-1;
end;
if l=n-2 then begin
if t then
for k:=0 to n-1 do
if a[k] then begin
writeln(k+1);
exit;
end;
if not(t) then
for k:=n-1 downto 0 do
if a[k] then begin
writeln(k+1);
exit;
end;
end;
end;
end.
