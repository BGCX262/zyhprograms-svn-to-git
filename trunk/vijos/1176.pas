var n,i,j,s:longint;
  a:array[1..100]of longint;
begin
  readln(n);
  while n>0 do begin
    inc(i);
    a[i]:=n mod 2;
    n:=n div 2;
  end;
  inc(i);
  for j:=i downto 1 do a[j]:=a[j] xor a[j+1];
  for j:=i downto 1 do s:=s*2+a[j];
  writeln(s+1);
end.