type arr=array[1..1000]of longint;
var a,b,c:arr;
n,w,i:longint;
procedure jc(k:longint);
var x,i:longint;
begin
x:=0;
for i:=1 to w do
begin
a[i]:=a[i]*k+x;
x:=a[i] div 10;
a[i]:=a[i] mod 10;
end;
while x>0 do
begin
w:=w+1;
a[w]:=x mod 10;
x:=x div 10;
end;
end;
procedure aaaa(a,b:arr;var c:arr);
var i:longint;
begin
for i:=1 to w do
begin
c[i]:=a[i]+b[i]+c[i];
c[i+1]:=c[i] div 10;
c[i]:=c[i] mod 10;
end;
while c[w]>10 do
begin
inc(w);
c[w]:=c[w-1] div 10;
c[w-1]:=c[w-1] mod 10;
end;
end;
begin
assign(input,'sum.in');
assign(output,'sum.out');
reset(input);
rewrite(output);
readln(n);
w:=1;
a[1]:=1;
for i:=1 to n do begin
jc(i);
aaaa(a,b,c);
b:=c;
fillchar(c,w,0);
end;
for i:=w downto 1 do write(b[i]);
close(input);
close(output);
end.
