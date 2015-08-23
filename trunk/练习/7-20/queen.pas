var a:array[1..10]of longint;
b:array[1..10]of boolean;
c:array[1..20]of boolean;
d:array[-9..9]of boolean;
s,n:longint;
procedure pr;
var i:longint;
begin
for i:=1 to n do write(a[i]:5);
writeln;
end;
procedure asd(t:longint);
var j:longint;
begin
if t=n+1 then begin pr; inc(s); end;
for j:=1 to n do
if (b[j])and(c[t+j])and(d[t-j]) then
begin
a[t]:=j;
b[j]:=false;
c[t+j]:=false;
d[t-j]:=false;
asd(t+1);
b[j]:=true;
c[t+j]:=true;
d[t-j]:=true;
end;
end;
begin
assign(input,'queen.in');
assign(output,'queen.out');
reset(input);rewrite(output);
readln(n);
fillchar(d,sizeof(d),true);
fillchar(b,sizeof(b),true);
fillchar(c,sizeof(c),true);
asd(1);
if s=0 then writeln('no solute!');
close(input);
close(output);
end.
