var a:array[1..200050]of longint;
  s,i,n:longint;
procedure asd(l,r:longint);
var i,j,x,t:longint;
begin
  i:=l;
  j:=r;
  x:=a[(l+r)div 2];
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
  s:=1;
  for i:=2 to n+1 do
    if a[i]=a[i-1] then inc(s)
                   else begin
                     writeln(a[i-1],' ',s);
                     s:=1;
                   end;
end.
