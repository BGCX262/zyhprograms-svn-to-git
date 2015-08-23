var
a:array[1..100,1..100]of boolean;
b,c:array[1..100]of longint;
max,i,j,n,m,x,y:integer;
function ss(m:longint):boolean;
var i:longint;
begin
ss:=true;
for i:=1 to m do
if (b[i]=1)and(a[i,m]) then begin
ss:=false;
break;
end;
end;
procedure try(step,s:longint);
var
i:integer;
begin
if step=n+1 then begin
if s>max then begin max:=s;c:=b;end;
exit;
end;
i:=step;
if ss(step) then begin
b[i]:=1;
try(step+1,s+1);
b[i]:=0;
end;
try(step+1,s);
end;
begin
assign(input,'inde.in');reset(input);
assign(output,'inde.out');rewrite(output);
readln(n,m);
for i:=1 to m do
begin
readln(x,y);
a[x,y]:=true;
a[y,x]:=true;
end;
try(1,0);
writeln(max);
for i:=1 to n do
write(c[i],' ');
writeln;
close(input);close(output);
end.
