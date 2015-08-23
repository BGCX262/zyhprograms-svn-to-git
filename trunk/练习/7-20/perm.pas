var
a,b:array[0..1000]of char;
max,i,n:longint;
u:array[0..1000]of boolean;
procedure print;
var
i:longint;
begin
inc(max);
for i:=1 to n do
write(a[i]);
writeln;
end;
procedure op(j:longint);
var
p:array['a'..'z']of boolean;
i:longint; ch:char;
begin
if j>n then begin print;exit;end;
for ch:='a' to 'z' do p[ch]:=true;
for i:=1 to n do
if (u[i])and(p[b[i]]) then
begin
u[i]:=false;
p[b[i]]:=false;
a[j]:=b[i];
op(j+1);
u[i]:=true;
end;
end;
begin
assign(input,'perm.in');
assign(output,'perm.out');
reset(input);
rewrite(output);
readln(n);
for i:=1 to n do
begin
read(b[i]);
a[i]:=a[i];
end;
for i:=1 to n do u[i]:=true;
op(1);
writeln(max);
close(input);
close(output);
end.
