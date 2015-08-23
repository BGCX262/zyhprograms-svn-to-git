var a:array[1..5000] of longint;
b:array[0..1000,0..5000] of longint;
rag,tp1,tp2,i,j,m,n,tmp,mn:longint;
begin
readln(m,n);
for i:=n downto 1 do read(a[i]);
for i:=1 to m do begin
rag:=3*i;
for j:=rag to n do begin
tp1:=b[i,j-1];
tp2:=b[i-1,j-2]+sqr(a[j-1]-a[j]);
if (tp1<tp2)and(j>=rag+1) then b[i,j]:=tp1
else b[i,j]:=tp2;
end;
end;
writeln(b[m,n]);
end.

