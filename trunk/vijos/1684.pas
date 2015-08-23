var a:array[1..1000000]of extended;
  i,n:longint;
procedure asd(l,r:longint);
var t,x:extended;
  i,j:longint;
begin
  i:=l;j:=r;
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
  for i:=1 to n do read(a[i]);
  asd(1,n);
  if a[1]<>a[2] then begin
    writeln(a[1]:0:0);
    exit;
  end
  else
    for i:=2 to n do
      if (i mod 2=0)and(a[i]<>a[i-1]) then begin
        writeln(a[i-1]:0:0);
        exit;
      end;
  writeln(a[n]:0:0);
end.