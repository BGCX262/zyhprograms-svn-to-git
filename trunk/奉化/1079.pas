var n,i,w:longint;a:array[1..10000]of longint;
procedure gjj(x:longint);
var i,s:longint;
begin
  for i:=1 to w do
  a[i]:=a[i]*x;
  s:=0;
  for i:=1 to w+1 do
  begin
    x:=a[i] mod 10+s;
      s:=a[i] div 10;
      a[i]:=x;
  end;
  if a[w+1]>0 then begin
  inc(w);
  while a[w]>10 do
  begin
    a[w]:=a[w-1] div 10;
    a[w-1]:=a[w-1] mod 10;
  end;
  end;
end;
begin
  readln(n);
  w:=1;a[1]:=1;
  for i:=n-1 downto 1 do
  begin
    a[1]:=a[1]+1;
    gjj(2);
  end;
  for i:=w downto 1 do write(a[i]);
end.

