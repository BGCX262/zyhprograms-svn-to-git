var
  i,n,k:longint;
  a,b:array[0..30000] of longint;
procedure qs(l,r:longint);
var
  i,j,x,t:longint;
begin
  i:=l; j:=r;
  x:=a[(i+j) div 2];
  repeat
    while (a[i]<x) do inc(i);
    while (a[j]>x) do dec(j);
    if i<=j then begin
      t:=a[i]; a[i]:=a[j]; a[j]:=t;
      inc(i); dec(j);
    end;
  until i>j;
  if l<j then qs(l,j);
  if i<r then qs(i,r);
end;
begin
  assign(input,'secret.in');
  assign(output,'secret.out');
  reset(input);
  rewrite(output);
  readln(n);
  for i:=1 to n do read(a[i]);
  readln(k);
  for i:=1 to k do readln(b[i]);
  qs(1,n);
  for i:=1 to k do writeln(a[b[i]]);
  close(input);
  close(output);
end.