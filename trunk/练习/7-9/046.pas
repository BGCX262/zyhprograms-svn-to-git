var  f:array[0..130,0..130]of qword;
n,i,j,k,max:longint;
begin
readln(n);
for i:=1 to n do f[i,i]:=1;
for i:=2 to n do
for j:=0 to i do
for k:=j+1 to n do
f[i,j]:=f[i,j]+f[i-j,k];
for i:=1 to n do max:=max+f[n,i];
writeln(max-1);
end.
