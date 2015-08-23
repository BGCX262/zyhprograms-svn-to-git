var a,b,f:array[0..10000]of longint;
  n,m,j,i:longint;
begin
  readln(m,n);
  for i:=1 to n do readln(a[i],b[i]);
  j:=n;
  for i:=m downto 1 do begin
    if a[j]<>i then f[i]:=f[i+1]+1
    else
      while i=a[j] do begin
        if f[a[j]+b[j]]>f[i] then
        f[i]:=f[b[j]+a[j]];
        dec(j);
      end;
  end;
  writeln(f[1]);
end.