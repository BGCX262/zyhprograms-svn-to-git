var a:array[1..1000000]of longint;
  n,i,s:longint;
procedure asd(l,r:longint);
var i,j,x,t:longint;
begin
  i:=l;
  j:=r;
  x:=a[(l+r) div 2];
  repeat
    while x>a[i] do inc(i);
    while x<a[j] do dec(j);
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
  readln(n);
  for i:=1 to n do readln(a[i]);
  asd(1,n);
  for i:=2 to n do
    if a[i-1]=a[i] then inc(s)
    else begin
      writeln(a[i-1],' ',s+1);
      s:=0;
    end;
  writeln(a[n],' ',s+1);
end.
