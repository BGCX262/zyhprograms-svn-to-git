var i,j,h,fz,fm,n:longint;
begin
readln(n);
i:=1;
fz:=1;
fm:=1;
j:=1;
h:=1;
if n=i then begin
writeln(fz,'/',fm);
halt;
end;
while n>i do begin
if h=j then
if h mod 2=1 then begin
inc(h);
j:=1;
inc(i);
fz:=1;
fm:=h;
if n=i then begin
writeln(fz,'/',fm);
halt;
end;
end
else begin
inc(h);
j:=1;
inc(i);
fz:=h;
fm:=1;
if n=i then begin
writeln(fz,'/',fm);
halt;
end;
end
else if h mod 2=1 then begin
inc(j);
inc(i);
inc(fm);
dec(fz);
if n=i then begin
writeln(fz,'/',fm);
halt;
end;
end
else begin
inc(j);
inc(i);
inc(fz);
dec(fm);
if n=i then begin
writeln(fz,'/',fm);
halt;
end;
end;
end;
end.