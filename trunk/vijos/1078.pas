var a:array[0..200]of boolean;
  i,j,l,m,n,k,n1:longint;
begin
  readln(n);
  readln(m);
  for i:=0 to n-1 do a[i]:=true;
  i:=-1;k:=1;
  n1:=n;
  while l<m do begin
    if i+k*k*k mod 5+1>n1 then i:=-1;
    while j<=k*k*k mod 5+1 do begin
      i:=(i+1)mod n;
      if a[i] then inc(j);
    end;
    j:=0;
    l:=l+1;
    inc(k);
    dec(n1);
    a[i]:=false;
  end;
  writeln(i+1);
end.