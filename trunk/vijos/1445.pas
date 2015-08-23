var a,b,c,d:array[1..100000]of longint;
  n,m,i,j:longint;
procedure asd(l,r:longint);
var i,j,x,t:longint;
begin
  i:=l;
  j:=r;
  x:=b[(l+r) div 2];
  repeat
    while b[i]>x do inc(i);
    while b[j]<x do dec(j);
    if i<=j then begin
      t:=b[i];
      b[i]:=b[j];
      b[j]:=t;
      t:=d[i];
      d[i]:=d[j];
      d[j]:=t;
      inc(i);
      dec(j);
    end;
  until i>j;
  if i<r then asd(i,r);
  if j>l then asd(l,j);
end;
procedure as(l,r:longint);
var i,j,x,t:longint;
begin
  i:=l;
  j:=r;
  x:=a[(l+r) div 2];
  repeat
    while a[i]>x do inc(i);
    while a[j]<x do dec(j);
    if i<=j then begin
      t:=a[i];
      a[i]:=a[j];
      a[j]:=t;
      inc(i);
      dec(j);
    end;
  until i>j;
  if i<r then as(i,r);
  if j>l then as(l,j);
end;
begin
  readln(n,m);
  for i:=1 to n do read(a[i]);
  for i:=1 to m do read(b[i]);
  for i:=1 to m do d[i]:=i;
  as(1,n);
  asd(1,m);
  i:=0;j:=0;
  while i<n do begin
    inc(i);
    inc(j);
    if j=m+1 then j:=1;
    c[d[j]]:=a[i]+c[d[j]];
  end;
  for i:=1 to m do write(c[i],' ');
end.