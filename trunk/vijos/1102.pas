var a:array[1..10]of longint;
  n,i,sum:longint;
begin
  for i:=1 to 10 do read(a[i]);
  readln(n);
  for i:=1 to 10 do
    if n+30>=a[i] then inc(sum);
  writeln(sum);
end.