var n,m,i,j,m1,min,t:longint;
  b:array[1..50000]of longint;
  a:array[1..50000,1..2]of longint;
  c:array[1..50000]of boolean;
  d,e:array[0..49999]of longint;
begin
  readln(n);
  for i:=1 to n do readln(a[i,1],a[i,2]);
  j:=n;
  i:=1;
  m:=1;
  while j<>0 do begin
    b[i]:=m;
    c[m]:=true;
    inc(i);
    dec(j);
    if j<>0 then
      if not(c[a[m,1]]) then m:=a[m,1]
                        else if not(c[a[m,2]]) then m:=a[m,2]
                                               else begin
                                                 writeln(-1);
                                                 exit;
                                               end;
  end;
  for i:=1 to n do begin
    inc(d[(b[i]-i+n)mod n]);
    inc(e[(b[i]+i)mod n]);
  end;
  for i:=1 to n do begin
    if e[i]>min then min:=e[i];
    if d[i]>min then min:=d[i];
  end;
  writeln(n-min);
end.

