var n,m,i,j,i1,j1,s:longint;
  a:array[1..1000]of longint;
begin
  readln(n,m);
  for i:=1 to n do readln(a[i]);
  for i:=1 to n do
    for j:=i+1 to n do
      if j*a[j]=i*a[i] then begin
        i1:=i;
        j1:=j;
        break;
      end;
  if m=1 then for i:=n downto (i1+j1)div 2 do s:=s+a[i]
  else for i:=1 to (i1+j1) div 2 do s:=s+a[i];
  writeln((i1+j1)div 2,' ',s);
end.