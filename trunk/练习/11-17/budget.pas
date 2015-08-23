type ar=record
       f1,f2,hx:longint;
     end;
var a:array[0..60]of ar;
  w,v:array[0..60]of longint;
  f:array[0..60,-15000..32000]of longint;
  n,m,i,j,z,zj:longint;
function max(a,b,c,d,e:longint):longint;
begin
  if a>b then max:=a
         else max:=b;
  if max<c then max:=c;
  if max<d then max:=d;
  if max<e then max:=e;
end;
begin
  readln(m,n);
  for i:=1 to n do begin
    readln(w[i],v[i],z);
    if z>0 then begin
      j:=0;
      repeat
        inc(j);
      until (a[j].hx=z);
      if a[j].f1=0 then a[j].f1:=i
                   else a[j].f2:=i;
    end
    else begin
      inc(zj);
      a[zj].hx:=i;
    end;
  end;
  for i:=0 to zj do
    for j:=-15000 to -1 do
      f[i,j]:=-maxlongint;
  for i:=1 to zj do
    for j:=0 to m do
      f[i,j]:=max(f[i-1,j],
        f[i-1,j-w[a[i].hx]]+w[a[i].hx]*v[a[i].hx],
        f[i-1,j-w[a[i].hx]-w[a[i].f1]]+w[a[i].hx]*v[a[i].hx]+w[a[i].f1]*v[a[i].f1],
        f[i-1,j-w[a[i].hx]-w[a[i].f2]]+w[a[i].hx]*v[a[i].hx]+w[a[i].f2]*v[a[i].f2],
        f[i-1,j-w[a[i].hx]-w[a[i].f1]-w[a[i].f2]]+w[a[i].hx]*v[a[i].hx]+w[a[i].f1]*v[a[i].f1]+w[a[i].f2]*v[a[i].f2]);
  writeln(f[zj,m]);
end.