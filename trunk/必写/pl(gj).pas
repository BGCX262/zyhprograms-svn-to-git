var n,m,i,w:longint;
  a:array[1..10000]of longint;
procedure asd(k:longint);
var i,x:longint;
begin
  x:=0;
  for i:=1 to w do begin
    x:=x+a[i]*k;
    a[i]:=x mod 10;
    x:=x div 10;
  end;
  while x>0 do begin
    inc(w);
    a[w]:=x mod 10;
    x:=x div 10;
  end;
end;
begin
  readln(n,m);
  w:=1;
  a[1]:=1;
  for i:=n downto n-m+1 do asd(i);
  for i:=w downto 1 do write(a[i]);
end.