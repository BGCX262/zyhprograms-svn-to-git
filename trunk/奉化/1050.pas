var f,f1:array[-4..35]of qword;
i,n:longint;
s:qword;
begin
readln(n);
f[1]:=1;
for i:=2 to n do
f[i]:=f[i-1]*2+4*(f[i-2]+f[i-3]+f[i-4]+f[i-5]);
for i:=2 to n do
f1[i]:=f[i-1]*2+4*(f[i-2]+f[i-3]+f[i-4]+f[i-5]);
for i:=n-5 to n do s:=s+f[i];
s:=s+f1[n];
writeln(s);
end.

