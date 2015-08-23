var s,i,j,n,step:longint;
a:array[1..100]of longint;
begin
assign(input,'playcard.in');
assign(output,'playcard.out');
reset(input);
rewrite(output);
readln(n);
for i:=1 to n do begin
read(a[i]);
s:=s+a[i];
end;
s:=s div n;
for i:=1 to n do
a[i]:=a[i]-s;
i:=1;
s:=1;
while (a[i]=0)and(i<n)  do inc(i);
s:=i;
while s<n do begin
inc(step);
a[s+1]:=a[s+1]+a[s];
a[s]:=0;
while (a[s]=0)and(s<n)  do inc(s);
end;
writeln(step);
close(input);
close(output);
end.
