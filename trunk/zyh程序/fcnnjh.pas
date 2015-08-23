var c:array[0..100000] of longint;
f:array[-100000..100000] of longint;
max,x,i,j,n,m:longint;
Begin
readln(n); c[0]:=0;
for i:=1 to n do
begin
read(x);
c[i]:=c[i-1];
if x=1 then inc(c[i]) else dec(c[i]);
if (i>max) and (c[i]=0) then begin max:=i; continue; end;
if f[c[i]]=0 then f[c[i]]:=i
else if i-f[c[i]]>max then max:=i-f[c[i]];
end;
writeln(max);
end.