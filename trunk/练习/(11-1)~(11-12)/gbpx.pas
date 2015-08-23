var a,r:array[1..10000]of longint;
  i,n:longint;
procedure asd(s,t:longint);
var m,i,j,k:longint;
begin
  if s=t then exit;
  m:=(s+t)div 2;
  asd(s,m);
  asd(m+1,t);
  k:=s;
  i:=s;
  j:=m+1;
  while (i<=m)and(j<=t) do begin
    if a[i]<=a[j] then begin
      r[k]:=a[i];inc(i);inc(k);
    end
                  else begin
                    r[k]:=a[j];inc(j);inc(k);
                  end;
  end;
  while i<=m do begin
    r[k]:=a[i];inc(i);inc(k);
  end;
  while j<=t do begin
    r[k]:=a[j];inc(j);inc(k);
  end;
  for i:=s to t do a[i]:=r[i];
end;
begin
  readln(n);
  for i:=1 to n do read(a[i]);
  asd(1,n);
  for i:=1 to n do write(a[i],' ');
end.