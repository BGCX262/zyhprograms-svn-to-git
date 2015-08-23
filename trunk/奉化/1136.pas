var m,n,i,j,w:longint;
  a,b:array[1..10000]of longint;
  x:longint;
procedure asd(k:longint);
var i:longint;
  x:longint;
begin
  x:=0;
  for i:=1 to w do begin
    x:=a[i]*k+x;
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
  readln(n);
  n:=n-2;
  m:=n*2;
  a[1]:=1;
  w:=1;
  for i:=m downto m-n+1 do asd(i);
  for j:=2 to n+1 do begin
    x:=0;fillchar(b,sizeof(b),0);
    for i:=w downto 1 do begin
      b[i]:=(x*10+a[i]) div j;
      x:=(x*10+a[i]) mod j;
    end;
    a:=b;
    while (a[w]=0) do dec(w);
  end;
  for i:=w downto 1 do write(a[i]);
end.