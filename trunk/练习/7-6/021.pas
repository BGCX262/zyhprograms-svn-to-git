var a:array[0..9]of longint;
k,i,t:longint;
begin
for i:=100 to 333 do
begin
for k:=0 to 9 do a[k]:=0;
k:=i;
a[k mod 10]:=1;
a[k div 100]:=1;
a[(k div 10)mod 10]:=1;
k:=2*i;
a[k mod 10]:=1;
a[k div 100]:=1;
a[(k div 10)mod 10]:=1;
k:=3*i;
a[k mod 10]:=1;
a[k div 100]:=1;
a[(k div 10)mod 10]:=1;
t:=0;
for k:=1 to 9 do t:=t+a[k];
if t=9 then writeln(i,' ',i*2,' ',i*3);
end;
end.