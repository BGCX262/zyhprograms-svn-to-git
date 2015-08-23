type aa=record
  xh,fj1,fj2:longint;
  end;
var n,m,j,k,i,zj:longint;
  w,v:array[0..60]of longint;
  f:array[0..60,-15000..32000]of longint;
  a:array[0..60]of aa;
function max(a,b,c,d,e:longint):longint;
begin
  max:=0;
  if max<a then max:=a;
  if max<b then max:=b;
  if max<c then max:=c;
  if max<d then max:=d;
  if max<e then max:=e;
end;
begin
  readln(m,n);
  for i:=1 to n do begin
    readln(w[i],v[i],j);
    k:=0;
    if j>0 then
    begin
      repeat
        inc(k);
      until a[k].xh=j;
      if a[k].fj1=0 then a[k].fj1:=i
                    else a[k].fj2:=i;
    end
    else begin
      inc(zj);
      a[zj].xh:=i;
    end;
  end;
  for i:=0 to zj do
    for j:=-15000 to -1 do f[i,j]:=-maxlongint;
  for i:=1 to zj do
    for j:=0 to m do
      f[i,j]:=max(f[i-1,j],
      f[i-1,j-w[a[i].xh]]+w[a[i].xh]*v[a[i].xh],
      f[i-1,j-w[a[i].xh]-w[a[i].fj1]]+w[a[i].xh]*v[a[i].xh]+w[a[i].fj1]*v[a[i].fj1],
      f[i-1,j-w[a[i].xh]-w[a[i].fj1]-w[a[i].fj2]]+w[a[i].xh]*v[a[i].xh]+w[a[i].fj1]*v[a[i].fj1]+w[a[i].fj2]*v[a[i].fj2],
      f[i-1,j-w[a[i].xh]-w[a[i].fj2]]+w[a[i].xh]*v[a[i].xh]+w[a[i].fj2]*v[a[i].fj2]);
  writeln(f[zj,m]);
end.
