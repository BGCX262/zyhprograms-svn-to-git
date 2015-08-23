var r,s:real;
  n,i:longint;
  a,b:array[1..100]of real;
begin
  readln(n,r);
  for i:=1 to n do readln(a[i],b[i]);
  for i:=2 to n do 
    s:=s+sqrt(sqr(a[i]-a[i-1])+sqr(b[i]-b[i-1]));
  s:=s+sqrt(sqr(a[n]-a[1])+sqr(b[n]-b[1]));
  writeln(s+r*2*pi:0:2);
end.