var a:array[1..30000]of longint;
  n,w,i,j,sum:longint;
procedure asd(l,r:longint);
var i,j,t,x:longint;
begin
  i:=l;
  j:=r;
  x:=a[(l+r)div 2];
  repeat
    while a[i]<x do inc(i);
    while a[j]>x do dec(j);
    if i<=j then begin
      t:=a[i];
      a[i]:=a[j];
      a[j]:=t;
      inc(i);
      dec(j);
    end;
  until i>j;
  if i<r then asd(i,r);
  if j>l then asd(l,j);
end;
begin
  assign(input,'group.in');
  assign(output,'group.out');
  reset(input);
  rewrite(output);
  readln(w);
  readln(n);
  for i:=1 to n do readln(a[i]);
  asd(1,n);
  i:=1;
  j:=n;
  while i<=j do begin
    if a[i]+a[j]<=w then begin
      inc(sum);
      inc(i);
      dec(j);
    end
      else begin
        dec(j);
        inc(sum);
      end;
  end;
  writeln(sum);
  close(input);
  close(output);
end.
