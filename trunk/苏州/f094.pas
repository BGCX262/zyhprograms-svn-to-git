var n,m,x1,x2,y1,y2,i,j,l,k,d1,t:longint;
  a,b,c,d:array[1..1000]of longint;
begin
  readln(n,m,k,l,d1);
  for i:=1 to d1 do begin
    readln(x1,y1,x2,y2);
    if x1<>x2 then if x1>x2 then inc(a[x2]) else inc(a[x1]);
    if y1<>y2 then if y1>y2 then inc(b[y2]) else inc(b[y1]);
  end;
  for i:=1 to n do c[i]:=i;
  for i:=1 to m do d[i]:=i;
  for i:=1 to n-1 do
    for j:=i+1 to n do
      if a[i]<a[j] then begin
        t:=a[i];a[i]:=a[j];a[j]:=t;
        t:=c[i];c[i]:=c[j];c[j]:=t;
      end;
  for i:=1 to k-1 do
    for j:=i+1 to k do
      if c[i]>c[j] then begin
        t:=c[i];c[i]:=c[j];c[j]:=t;
      end;
  for i:=1 to k do write(c[i],' ');
  writeln;
  for i:=1 to m-1 do
    for j:=i+1 to m do
      if b[i]<b[j] then begin
        t:=b[i];b[i]:=b[j];b[j]:=t;
        t:=d[i];d[i]:=d[j];d[j]:=t;
      end;
  for i:=1 to l-1 do
    for j:=i+1 to l do
      if d[i]>d[j] then begin
        t:=d[i];d[i]:=d[j];d[j]:=t;
      end;
  for i:=1 to l do write(d[i],' ');
  writeln;
end.