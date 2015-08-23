program qq;
var
 i,j,m,n,k,p,q,max,s,x1,y1:longint;
 a:array[0..200,0..200] of integer;
 x,y:array[0..400] of integer;
begin
 readln(m,n,k);
 for i:=1 to m do
for j:=1 to n do
  read(a[i,j]);
max:=0;
 j:=1;
for i:=1 to m do
  for s:=1 to n do
if (max<a[i,s]) then begin
  max:=a[i,s];
  x[j]:=i;
  y[0]:=s;
  y[j]:=s;
  end;
x1:=trunc(abs(x[j]-x[j-1]));
y1:=trunc(abs(y[j]-y[j-1]));
  if p+1+X1+Y1+x[j]<=k then begin
  inc(p,x1+y1+1);
  q:=q+max;
  a[x[j],y[j]]:=0;
  end
  else begin writeln(q); exit; end;
  while true do begin
  inc(j);
  max:=0;
for i:=1 to m do
  for s:=1 to n do
if max<a[i,s] then begin
  max:=a[i,s];
  x[j]:=i;
  y[j]:=s;
  end;
  x1:=trunc(abs(x[j]-x[j-1]));
y1:=trunc(abs(y[j]-y[j-1]));
  if p+1+X1+Y1+x[j]<=k then begin
  inc(p,x1+y1+1);
  inc(q,max);
  a[x[j],y[j]]:=0;
  end
  else begin writeln(q); exit; end;
  end;
end.
