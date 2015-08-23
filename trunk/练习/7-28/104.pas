var n:longint;
begin
readln(n);
write(n,'--------');
while n<>1 do begin
if n mod 2=0 then begin
write(n,'/2=',n div 2);
n:=n div 2;
if n<>1 then write('--------');
end
else begin
write(n,'*3+1=',n*3+1,'--------');
n:=n*3+1;
end;
end;
end.