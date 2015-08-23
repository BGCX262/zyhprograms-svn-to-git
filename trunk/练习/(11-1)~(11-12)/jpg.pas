var f:array[boolean,0..30]of longint;
  n,m,i,j,x,ma1x:longint;
function max(x,y:longint):longint;
begin
  if x>y then max:=x
         else max:=y;
end;
begin
  readln(n,m);
  for i:=1 to n do begin
    read(x);
    dec(x);
    f[odd(i),0]:=f[not odd(i),0]+ord(x=0);
    for j:=1 to m do
      f[odd(i),j]:=max(f[not odd(i),j-1],f[not odd(i),j])+ord(j mod 2=x);
  end;
  for i:=0 to m do
  if ma1x<f[odd(n),i] then ma1x:=f[odd(n),i];
  writeln(ma1x);
end.