var
  n,max,i:longint;
  a,b,c,d:array[0..50001] of longint;
begin
  readln(n);
  for i:=1 to n do readln(a[i],b[i]);
  c[1]:=1; c[2]:=a[1];
  for i:=3 to n do
    if c[i-2]=a[c[i-1]] then c[i]:=b[c[i-1]]
     else
       if c[i-2]=b[c[i-1]] then c[i]:=a[c[i-1]] else begin writeln(-1); halt end;
  if c[n]<>b[1] then begin writeln(-1); halt end;
  fillchar(d,sizeof(d),0);
  for i:=1 to n do inc(d[(c[i]-i+n)mod n]);
  for i:=0 to n-1 do if d[i]>max then max:=d[i];
  fillchar(d,sizeof(d),0);
  for i:=1 to n do inc(d[(c[i]+i-1)mod n]);
  for i:=0 to n-1 do if d[i]>max then max:=d[i];
  writeln(n-max);
end.

