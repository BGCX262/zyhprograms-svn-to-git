type
sz=record
x:longint;
v,w:array[0..60] of longint;
end;
var
a:array[0..60] of sz;
i,j,k,n,m,v,p,q,max:longint;
f:array[0..10000] of longint;
begin
assign(input,'1069.in');
assign(output,'1069.out');
reset(input);
rewrite(output);
readln(n,m); n:=n div 10; j:=0;
for i:=1 to m do begin
readln(v,p,q);
v:=v div 10; p:=p*v;
if q=0 then begin
a[i].v[0]:=v;
a[i].w[0]:=p;
inc(k);
end
else
begin
inc(a[q].x);
a[q].v[a[q].x]:=v;
a[q].w[a[q].x]:=p;
end;
end;
for i:=1 to m do
for j:=n downto 0 do begin
if (j-a[i].v[0]>=0)and(f[j-a[i].v[0]]+a[i].w[0]>f[j]) then f[j]:=f[j-a[i].v[0]]+a[i].w[0];
if (j-a[i].v[0]-a[i].v[1]>=0)and(f[j-a[i].v[0]-a[i].v[1]]+a[i].w[0]+a[i].w[1]>f[j]) then
f[j]:=f[j-a[i].v[0]-a[i].v[1]]+a[i].w[0]+a[i].w[1];
if (j-a[i].v[0]-a[i].v[2]>=0)and (f[j-a[i].v[0]-a[i].v[2]]+a[i].w[0]+a[i].w[2]>f[j]) then
f[j]:=f[j-a[i].v[0]-a[i].v[2]]+a[i].w[0]+a[i].w[2];
if (j-a[i].v[0]-a[i].v[1]-a[i].v[2]>=0)and(f[j-a[i].v[0]-a[i].v[1]-a[i].v[2]]+a[i].w[0]+a[i].w[1]+a[i].w[2]>f[j]) then
f[j]:=f[j-a[i].v[0]-a[i].v[1]-a[i].v[2]]+a[i].w[0]+a[i].w[1]+a[i].w[2];
end;
for i:=1 to n do if f[i]>max then max:=f[i];
writeln(max*10);
close(input);
close(output);
end. 
 
