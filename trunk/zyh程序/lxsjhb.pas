var ss:array[1..1000,1..2]of real;
n,i,j,k:longint;
f,dis:array[1..1000,1..1000]of extended;
min:extended;
procedure qk(s,t:longint);
 var i,j:longint;
  x,y:real;
 begin
x:=ss[s,1];i:=s;j:=t;y:=ss[s,2];
while i<j do begin
  while (i<j)and(ss[j,1]>=x)do dec(j);
  if i<j then begin
ss[i,1]:=ss[j,1];ss[i,2]:=ss[j,2];inc(i);
  end;
  while (i<j)and(ss[i,1]<=x)do inc(i);
  if i<j then begin
ss[j,1]:=ss[i,1];ss[j,2]:=ss[i,2];dec(j);
  end;
end;
ss[i,1]:=x;ss[i,2]:=y;
if s<i-1 then qk(s,i-1);
if j+1<t then qk(j+1,t);
 end;
begin
 readln(n);
 for i:=1 to n do readln(ss[i,1],ss[i,2]);
 qk(1,n);
 //for i:=1 to n do writeln(ss[i,1]:0:2,' ',ss[i,2]:0:2);
 for i:=1 to n-1 do
for j:=i+1 to n do begin
  dis[i,j]:=sqrt(sqr(ss[j,1]-ss[i,1])+sqr(ss[j,2]-ss[i,2]));
  dis[j,i]:=dis[i,j];
end;
for i:=1 to n do begin
for j:=1 to i-1 do begin
  if j=1 then begin
f[i,j]:=f[i-1,1]+dis[i-1,i];
  end
  else if j+1=i then begin
min:=1e24;
for k:=1 to j-1 do if min>f[j,k]+dis[k,i] then
  min:=f[j,k]+dis[k,i];
f[i,j]:=min;
  end
  else if j+1<i then
f[i,j]:=f[i-1,j]+dis[i-1,i];
end;
end;
 min:=1e24;
 for i:=1 to n-1 do if min>f[n,i]+dis[i,n] then
min:=f[n,i]+dis[i,n];
 f[n,n]:=min;
 writeln(f[n,n]:0:2);
end.