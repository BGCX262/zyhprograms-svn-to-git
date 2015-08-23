var a:array[0..10000,1..2]of longint;
  f:array[0..10000]of longint;
  i,n,m,x:longint;
procedure asd(l,r:longint);
var i,j,x,t:longint;
begin
  i:=l;
  j:=r;
  x:=a[(l+r)div 2,1];
  repeat
    while x>a[i,1] do inc(i);
    while x<a[j,1] do dec(j);
    if i<=j then begin
      t:=a[i,1];a[i,1]:=a[j,1];a[j,1]:=t;
      t:=a[i,2];a[i,2]:=a[j,2];a[j,2]:=t;
      inc(i);
      dec(j);
    end;
  until i>j;
  if i<r then asd(i,r);
  if j>l then asd(l,j);
end;
begin
  assign(input,'Lazy.in');
  assign(output,'Lazy.out');
  reset(input);
  rewrite(output);
  readln(m,n);
  for i:=1 to n do readln(a[i,1],a[i,2]);
  asd(1,n);
  x:=n;
  for i:=m downto 1 do
    if i>a[x,1] then f[i]:=f[i+1]+1
                else begin
                  f[i]:=f[i+a[x,2]];
                  x:=x-1;
                  while i=a[x,1] do begin
                    if f[i]<f[i+a[x,2]] then f[i]:=f[i+a[x,2]];
                    x:=x-1;
                  end;
                end;
  writeln(f[1]);
  close(input);
  close(output);
end.
