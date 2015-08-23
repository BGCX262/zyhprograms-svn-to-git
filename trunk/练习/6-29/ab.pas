var w,i:integer;x,y:longint;
a,b,c:array[0..1000]of longint;
begin
assign(input,'ab.in');
assign(output,'ab.out');
reset(input);
rewrite(output);
readln(x,y);
a[0]:=x;
b[0]:=x div y;
c[0]:=x mod y;
if c[0]=0 then begin
writeln(x,'/',y,'=',b[0],'.','0');
close(input);
close(output);
halt;
end
else write(x,'/',y,'=',b[0],'.');
for i:=1 to 20 do
begin
if c[i-1]=0 then begin
writeln;
close(input);
close(output);
exit;
end;
a[i]:=c[i-1]*10;
b[i]:=a[i] div y;
write(b[i]);
c[i]:=a[i] mod y;
end;
writeln;
close(input);
close(output);
end.
