var a:array[1..1000000]of longint;
  n,m,i,j,s:longint;
procedure asd(l,r:longint);
var i,j,x,t:longint;
begin
  i:=l;
  j:=r;
  x:=a[(l+r)div 2];
  repeat
    while x<a[i] do inc(i);
    while x>a[j] do dec(j);
    if i<=j then begin
      t:=a[i];
      a[i]:=a[j];
      a[j]:=t;
      inc(i);
      dec(j);
    end;
  until i>j;
  if i<r then asd(i,r);
  if j>l then asd(l,j);
end;
begin
  readln(m);
  readln(n);
  for i:=1 to n do readln(a[i]);
  asd(1,n);
  i:=1;
  j:=n;
  while i<=j do
    if a[i]+a[j]<=m then begin
      inc(i);
      dec(j);
      inc(s);
    end
    else begin
      inc(i);
      inc(s);
    end;
  writeln(s);
end.