var a:array[0..10000]of longint;
n,i:longint;
procedure as(var x,y:longint);
var t:longint;
begin
  t:=x;
  x:=y;
  y:=t;
end;
procedure asd(i,m:longint);
begin
  while i*2<=m do begin
    i:=i*2;
    if (i+1<=m)and(a[i]<a[i+1]) then inc(i);
    if (a[i]>a[i div 2]) then as(a[i],a[i div 2])
                         else break;
  end;
end;
begin
  readln(n);
  for i:=1 to n do read(a[i]);
  for i:=n div 2 downto 1 do asd(i,n);
  for i:=n downto 2 do begin
    as(a[1],a[i]);
    asd(1,i-1);
  end;
  for i:=1 to n do write(a[i],' ');
end.