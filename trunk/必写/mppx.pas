var n,i,j,t:longint;
  a:array[1..1000]of longint;
begin
  readln(n);
  for i:=1 to n do read(a[i]);
  for i:=n downto 1 do
    for j:=n-i downto 1 do
      if a[j]>a[j+1] then begin
        t:=a[j];
        a[j]:=a[j+1];
        a[j+1]:=t;
      end;
  for i:=1 to n do write(a[i]:4);
end.