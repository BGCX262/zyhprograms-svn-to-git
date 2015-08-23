var n,i,j,k,m:word;
a:array[1..100]of word;
f:array[0..2000,0..2000]of boolean;
begin
readln(n);
for i:=1 to n do read(a[i]);
readln;
for k:=1 to n do
begin
for i:=m downto 0 do
for j:=m-i downto 0 do
if f[i,j]then begin f[i,j+a[k]]:=true;f[i+a[k],j]:=true;end;
f[a[k],0]:=true;
f[0,a[k]]:=true;
inc(m,a[k]);
end;
for i:=m downto 0 do if f[i,i] then begin writeln(i);break;end;
if i=0 then writeln('Impossible');
end.

