program sd;
var n,t,i,v,s,max,j:longint;
u:string;
a,d,e:array[1..1000] of string;
b,c,f,h:array[1..1000] of longint;
m,o:string;
begin
readln(n);
for i:=1 to n do
begin
readln(m);
o:=' ';
v:=pos(o,m);a[i]:=copy(m,1,v-1);delete(m,1,v);
v:=pos(o,m);u:=copy(m,1,v-1);delete(m,1,v);val(u,b[i],t);
v:=pos(o,m);u:=copy(m,1,v-1);delete(m,1,v);val(u,c[i],t);
v:=pos(o,m);d[i]:=copy(m,1,v-1);delete(m,1,v);
v:=pos(o,m);e[i]:=copy(m,1,v-1);delete(m,1,v);
u:=copy(m,1,1);delete(m,1,1);val(u,f[i],t);
end;
for i:=1 to n do
begin
if (b[i]>80)and(f[i]>=1) then h[i]:=h[i]+8000;
if (b[i]>85)and(c[i]>80) then h[i]:=h[i]+4000;
if (b[i]>90) then h[i]:=h[i]+2000;
if (b[i]>85)and(e[i]='Y') then h[i]:=h[i]+1000;
if (c[i]>80)and(d[i]='Y') then h[i]:=h[i]+850;
if h[i]>max then begin max:=h[i];j:=i;end;
s:=s+h[i];
end;
writeln(a[j]);
writeln(max);
writeln(s);
end.