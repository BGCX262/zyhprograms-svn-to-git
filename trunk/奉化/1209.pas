const
  xx:array[1..2] of integer=(1,1);
  yy:array[1..2] of integer=(0,1);
var
  xxx,yyy,n,m,i,j,sums,sum2,t,w:longint;
  a:array[1..16,1..16] of longint;
  h:array[1..100000,1..4] of longint;
procedure print(x:longint);
begin
  if x=0 then exit;
  print(h[x,4]);
  write(a[h[x,1],h[x,2]],' ');
end;
begin
  read(n,m);
  for i:=1 to n do
    for j:=1 to i do
      read(a[i,j]);
  h[1,1]:=1;
  h[1,2]:=1;
  h[1,3]:=a[1,1];
  h[1,4]:=0;
  t:=1;
  w:=1;
  sum2:=0;
  repeat
    for i:=1 to 2 do
    begin
      xxx:=h[t,1]+xx[i];
      yyy:=h[t,2]+yy[i];
      if (xxx<=n) and (yyy<=n) then
      begin
        inc(w);
        h[w,1]:=xxx;
        h[w,2]:=yyy;
        h[w,3]:=h[t,3]+a[xxx,yyy];
        h[w,4]:=t;
      end;
    end;
    inc(t);
    if (h[t,1]=n) and (h[t,3]=m) then
    begin
      inc(sum2);
      print(t);
      writeln;
    end;
  until t>w;
  if sum2=0 then writeln('No answer!');
end.
