var f:array[boolean,0..30]of longint;
    t,w,i,j,p:longint;
function max(a,b:longint):longint;
begin
  if a>b then max:=a else max:=b;
end;
begin
  fillchar(f,sizeof(f),0);
  readln(t,w);
  for i:=1 to t do begin
    read(p);
    p:=p-1;
    f[odd(i),0]:=f[not odd(i),0]+ord(p=0);
    for j:=1 to w do
      f[odd(i),j]:=max(f[not odd(i),j],f[not odd(i),j-1])+ord(j mod 2=p);
  end;
  p:=0;
  for i:=0 to w do if f[odd(t),i]>p then p:=f[odd(t),i];
  writeln(p);
end.