var sum,n,i,j,step:longint;
  a:array[1..100]of longint;
begin
  readln(n);
  for i:=1 to n do begin
    read(a[i]);
    sum:=sum+a[i];
  end;
  sum:=sum div n;
  for i:=1 to n do a[i]:=a[i]-sum;
  i:=1;
  j:=n;
    while (i<=n)and(a[i]=0) do inc(i);
  while i<=j do begin
    a[i+1]:=a[i]+a[i+1];
    a[i]:=0;
    inc(step);
      while (i<=n)and(a[i]=0) do inc(i);
  end;
  writeln(step);
end.