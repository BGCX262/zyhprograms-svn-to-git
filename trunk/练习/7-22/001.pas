var n,k,i,j,l:longint;
a:array[1..10000]of qword;
s:qword;
begin
readln(n);
for i:=1 to n do begin
readln(k);
j:=0;s:=0;
while k>0 do begin
inc(j);
a[j]:=k mod 2;
k:=k div 2;
end;
for k:=1 to j do begin
for l:=1 to k-1 do
a[k]:=a[k]*3;
s:=s+a[k];
end;
writeln(s);
end;
end.
