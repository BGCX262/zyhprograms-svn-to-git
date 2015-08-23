var k,n,i,j,sum:longint;
  a:array[1..1000]of longint;
begin
  readln(k,n);
  while n>0 do begin
    inc(i);
    a[i]:=n mod 2;
    n:=n div 2;
  end;
  for j:=i downto 1 do sum:=sum*k+a[j];
  writeln(sum);
end.