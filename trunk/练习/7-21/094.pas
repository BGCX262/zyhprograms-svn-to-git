type arr=array[1..1000]of qword;
var n,i,w,m:integer;a,b,c,d:arr;
procedure gjj(a,b,c:arr;var d:arr);
var i:integer;
begin
  for i:=1 to w do
  begin
    d[i]:=c[i]+a[i]+b[i]+d[i];
    d[i+1]:=d[i] div 10;
    d[i]:=d[i] mod 10;
  end;
  if d[w+1]>0 then w:=w+1;
end;
begin
  readln(n);
  a[1]:=1;w:=1;b[1]:=1;c[1]:=2;
  for i:=3 to n do
  begin
    gjj(a,b,c,d);
    a:=b;
    b:=c;
    c:=d;
    fillchar(d,w,0);
  end;
  while b[w]=0 do dec(w);
  for i:=w downto 1 do write(b[i]);
  end.

