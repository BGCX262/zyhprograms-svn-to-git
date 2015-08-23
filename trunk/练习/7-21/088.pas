var n,i:longint;
begin
readln(n);
write(n,'=');
for i:=2 to n div 2 do
while n mod i=0 do begin
write(i);
n:=n div i;
if n<>1 then write('*');
end;
end.