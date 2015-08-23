var a:array[1..9]of integer;
b:array[1..9]of boolean;
n:integer;
procedure pr;
var i:integer;
begin
for i:=1 to n-1 do write(a[i],' ');
writeln(a[n]);
end;
procedure asd(step:integer);
var i:longint;
begin
if step=n+1 then begin
pr;exit;
end;
for i:=1 to n do
if b[i] then begin
b[i]:=false;
a[step]:=i;
asd(step+1);
b[i]:=true;
end;
end;
begin
assign(input,'form.in');
assign(output,'form.out');
reset(input);
rewrite(output);
readln(n);
fillchar(b,sizeof(b),true);
asd(1);
close(input);
close(output);
end.
