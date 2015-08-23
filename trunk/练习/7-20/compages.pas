program zyh(input,output);
var
a:array[0..1000]of longint;
n,i,k:longint;
s:set of 1..21;
f:array[0..1000]of boolean;
procedure print;
var
i:longint;
begin
for i:=1 to k-1 do
write(a[i],' ');
writeln(a[k]);
end;
procedure se(j:longint);
var
i:longint;
begin
if j>k then begin print;exit;end;
for i:=1 to n do
if (f[i])and(i>a[j-1]) then
begin
a[j]:=i;
f[i]:=false;
se(j+1);
f[i]:=true;
end;
end;
begin
assign(input,'compages.in');
assign(output,'compages.out');
reset(input);
rewrite(output);
readln(n,k);
for i:=1 to n do f[i]:=true;
if (n=0)or(k=0) then halt;
se(1);
close(input);
close(output);
end.
