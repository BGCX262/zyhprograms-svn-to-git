var a:array[0..20000]of longint;
  j,i,n,start,m,sum,k,t:longint;
begin
  readln(n);
  for i:=1 to n do read(a[i]);
  for i:=2 to n do begin
    a[0]:=a[i];j:=i-1;
    while (a[0]<a[j])and(j>0) do begin
      a[j+1]:=a[j];
      dec(j);
    end;
    a[j+1]:=a[0];
  end;
  start:=1;
  m:=n;
  for i:=1 to n-1 do begin
    sum:=a[start]+a[start+1]+sum;
    t:=a[start]+a[start+1];
    inc(m);
    a[m]:=t;
    inc(start);
    inc(start);
    for j:=start to m do begin
      a[0]:=a[j];k:=j-1;
      while (a[0]<a[k])and(k>0) do begin
        a[k+1]:=a[k];
        dec(k);
      end;
      a[k+1]:=a[0];
    end;
  end;
  writeln(sum);
end.