var a:array[0..9]of longint;
i,j,k,s,n:longint;
begin
readln(n);
a[0]:=6;a[1]:=2;a[2]:=5;
a[3]:=5;a[4]:=5;a[5]:=5;
a[6]:=6;a[7]:=3;a[8]:=7;
a[9]:=6;
for i:=10 to 2000 do begin
j:=i;k:=0;
repeat
if j>=10 then begin
k:=k+a[j mod 10];
j:=j div 10;
end;
until j<10;
k:=k+a[j];
a[i]:=k;
end;
for i:=0 to 1000 do
for j:=0 to 1000 do
if a[i]+a[j]+a[i+j]=n-4 then inc(s);
writeln(s);
end.