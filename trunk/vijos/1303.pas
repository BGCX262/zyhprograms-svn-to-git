var ch:char;
  a:array[1..20,1..3]of longint;
  s,max,n,i,j:longint;
begin
  while not eoln do begin
    read(ch);
    if ch=',' then begin
      inc(n);
      a[n,1]:=s;
      a[n,2]:=1;
      a[n,3]:=1;
      s:=0;
    end
    else s:=s*10+ord(ch)-48;
  end;
  inc(n);
  a[n,1]:=s;
  a[n,2]:=1;
  a[n,3]:=1;
  for i:=n downto 1 do
    for j:=n downto i+1 do
      if (a[j,1]<a[i,1])and(a[j,2]+1>a[i,2]) then a[i,2]:=a[j,2]+1;
  for i:=1 to n do
    if max<a[i,2] then max:=a[i,2];
  write(max,',');
  for i:=1 to n do
    for j:=1 to i-1 do
      if (a[j,1]<=a[i,1])and(a[j,3]+1>a[i,3]) then a[i,3]:=a[j,3]+1;
  max:=0;
  for i:=1 to n do
    if max<a[i,3] then max:=a[i,3];
  writeln(max-1);
end.