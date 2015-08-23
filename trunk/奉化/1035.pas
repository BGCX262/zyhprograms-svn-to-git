var a:array[1..10000]of longint;
  n,i:longint;
procedure asd(l,r:longint);
var t,m,i,j:longint;
begin
  i:=l;j:=r;
  m:=a[(l+r)div 2];
  repeat
    while m<a[i] do inc(i);
    while m>a[j] do dec(j);
    if i<=j then begin
      t:=a[i];
      a[i]:=a[j];
      a[j]:=t;
      inc(i);
      dec(j);
    end;
  until i>j;
  if j>l then asd(l,j);
  if i<r then asd(i,r);
end;
begin
  readln(n);
  for i:=1 to n do read(a[i]);
  asd(1,n);
  for i:=1 to n do
    if i mod 10=0 then writeln(' ',a[i])
    else write(' ',a[i]);
end.
