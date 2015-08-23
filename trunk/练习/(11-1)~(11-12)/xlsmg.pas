const x:array[1..4] of integer=(-1,0,1,0);
  y:array[1..4] of integer=(0,1,0,-1);
var i,t,w,min,x1,y1,t1,t2,w1,w2,n,m,k,sum:longint;
b,b1:array[0..101,0..101]of boolean;
h:array[1..100000,1..3]of longint;
procedure asd(x2,y2,s:longint);
var x1,y1,i:longint;
begin
if (x2=w1)and(y2=w2)and(s=min) then begin
inc(sum);
exit;
end;
if (s>=min) or (abs(w1-x2)>min-s) or (abs(w2-y2)>min-s) then exit;
for i:=1 to 4 do
begin
x1:=x2+x[i];
y1:=y2+y[i];
if (x1>0)and(x1<=n)and(y1>0)and(y1<=m)and(b1[x1,y1]) then begin
b1[x1,y1]:=false;
asd(x1,y1,s+1);
b1[x1,y1]:=true;
end;
end;
end;
begin
readln(n,m,k);
fillchar(b,sizeof(b),true);
fillchar(b1,sizeof(b1),true);
for i:=1 to k do begin
readln(t1,t2);
b[t1,t2]:=false;
b1[t1,t2]:=false;
end;
readln(t1,t2);
readln(w1,w2);
t:=1;
w:=1;
h[w,1]:=t1;
h[w,2]:=t2;
min:=maxlongint;
h[w,3]:=0;
repeat;
for i:=1 to 4 do
begin
x1:=h[t,1]+x[i];
y1:=h[t,2]+y[i];
if (x1>0)and(x1<=n)and(y1>0)and(y1<=m) then
if (b[x1,y1]) then
begin
inc(w);
h[w,1]:=x1;
h[w,2]:=y1;
b[x1,y1]:=false;
h[w,3]:=h[t,3]+1;
end;
end;
inc(t);
if (h[t,1]=w1)and(h[t,2]=w2)and(min>h[t,3]) then min:=h[t,3];
until t>w;
if min=maxlongint then writeln('No Solution!')
else begin
asd(t1,t2,0);
writeln(min);
writeln(sum);
end;
end.