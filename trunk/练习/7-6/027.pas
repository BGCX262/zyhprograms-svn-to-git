var n,i,t,s,l,k:integer;
a,b:array[1..100]of integer;
begin
read(n);
for i:=1 to n do read(a[i]);
for i:=1 to n do begin
if a[i]<=0 then writeln('None') else begin k:=0;
while a[i]>0 do begin
t:=1;s:=0;
while a[i]>=t do begin t:=t*2;s:=s+1;end;
t:=t div 2;s:=s-1;
a[i]:=a[i]-t;
inc(k);
b[k]:=s;
end;
for l:=k downto 1 do write(chr(65+b[l]));
writeln;
end;
end;
end.
