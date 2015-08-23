var x,y:qword;
  n,i,j,m,w:longint;
  a:array[1..10000]of longint;
  s:ansistring;
procedure asd(k:longint);
var x,i:longint;
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
  for j:=1 to m do begin
    s:='';
    x:=0;y:=0;
    for i:=w downto 1 do begin
      x:=(y*10+a[i])div j;
      y:=(y*10+a[i])mod j;
      s:=s+chr(48+x);
    end;
    while (s[1]='0')and(length(s)>1) do delete(s,1,1);
    w:=length(s);
    for i:=1 to w do a[i]:=ord(s[w-i+1])-48;
  end;
  for i:=w downto 1 do write(a[i]);
end.