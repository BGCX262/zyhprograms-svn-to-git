var
a:array[0..1000]of longint;
b:array[0..1000]of boolean;
n,i,k:longint;
procedure print;
var
i:longint;
begin
for i:=1 to n do
if b[i] then writeln('number:',i,'  ','weight:',a[i]);
close(input);
close(output);
halt;
end;
procedure asd(k,m:longint);
begin
if a[m]=k then begin b[m]:=true;print;b[m]:=false;end
else if m=0 then exit
else if (a[m]<k)and(a[m]<>0) then
begin
b[m]:=true;
asd(k-a[m],m-1);
b[m]:=false;
asd(k,m-1);
end
else asd(k,m-1);
end;
begin
assign(input,'snap.in');
assign(output,'snap.out');
reset(input);
rewrite(output);
readln(n,k);
for i:=1 to n do
read(a[i]);
asd(k,n);
writeln('not found');
close(input);
close(output);
end.
