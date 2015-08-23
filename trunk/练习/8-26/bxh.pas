var st:string;
i,max,min:longint;
ch:char;
a:array['a'..'z'] of longint;
function ss(n:longint):boolean;
var i:longint;
begin
if (n<>1)and(n<>0) then ss:=true
else ss:=false;
for i:=2 to trunc(sqrt(n)) do
if n mod i=0 then begin
ss:=false;
exit;
end;
end;
begin
readln(st);
for i:=1 to length(st) do inc(a[st[i]]);
min:=maxlongint;
for ch:='a' to 'z' do begin
if a[ch]>max then max:=a[ch];
if (a[ch]<min)and(a[ch]<>0) then min:=a[ch];
end;
if ss(max-min) then begin
writeln('Lucky Word');
writeln(max-min);
end
else begin
writeln('No Answer');
writeln(0);
end;
end.