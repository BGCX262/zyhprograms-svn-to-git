var a,b:array[1..10000]of longint;
c:array[1..10000]of boolean;
i,n,k:longint;
procedure asd(step,s:longint);
var i:longint;
begin
if s=k then begin for i:=1 to step-1 do write(b[i],' ');
close(input);
close(output);
halt;
end;
if (s>k) then exit;
for i:=1 to n do
if (c[i]) then
begin
b[step]:=a[i];
s:=s+b[step];
c[i]:=false;
asd(step+1,s);
s:=s-b[step];
c[i]:=true;
end;
end;
begin
assign(input,'subsum.in');
assign(output,'subsum.out');
reset(input);
rewrite(output);
readln(n,k);
for i:=1 to n do read(a[i]);
for i:=1 to n do c[i]:=true;
asd(1,0);
writeln('No Solution');
close(input);
close(output);
end.
