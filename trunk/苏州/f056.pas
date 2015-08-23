type arr=array[1..1000]of longint;
var a,b:arr;
  n,i:longint;
procedure asd(var x,y:arr);
var i,j:longint;
  c:arr;
begin
  fillchar(c,sizeof(c),0);
  for i:=1 to 500 do
    for j:=1 to 500 do
    begin
      c[i+j-1]:=c[i+j-1]+x[i]*y[j];
      c[i+j]:=c[i+j]+c[i+j-1] div 10;
      c[i+j-1]:=c[i+j-1] mod 10;
    end;
  c[500]:=c[500] mod 10;
  x:=c;
end;
begin
  readln(n);
  writeln(trunc(n*ln(2)/ln(10))+1);
  a[1]:=1;
  b[1]:=2;
  while n>0 do begin
    if n mod 2=1 then asd(a,b);
    asd(b,b);
    n:=n div 2;
  end;
  dec(a[1]);
  for i:=500 downto 1 do
    if i mod 50=1 then writeln(a[i])
    else write(a[i]);
end.