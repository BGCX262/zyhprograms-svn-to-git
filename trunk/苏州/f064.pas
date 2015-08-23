var n,m,i,j,k,l,t,min,k1:longint;
  a,b:array[1..10000]of longint;
begin
  readln(n);
  readln(m);
  for i:=1 to n do read(a[i]);
  for i:=1 to m do begin
    for j:=n downto 1 do
      if a[j]<a[j+1] then break;
    min:=maxlongint;
    for k:=j+1 to n do
      if (min>a[k])and(a[k]>a[j]) then begin
        min:=a[k];
        k1:=k;
      end;
    t:=a[j];a[j]:=a[k1];a[k1]:=t;
    for l:=j+1 to n do b[l-j]:=a[l];
    for l:=j+1 to n do a[l]:=b[n-l+1];
  end;
  for i:=1 to n do write(a[i],' ');
end.