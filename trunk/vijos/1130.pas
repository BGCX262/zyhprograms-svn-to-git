var f:array[1..1000]of longint;
  n,i,j:longint;
begin
  readln(n);
  f[1]:=1;
  f[2]:=2;
  for i:=3 to n do begin
    for j:=1 to i div 2 do f[i]:=f[i]+f[j];
    f[i]:=f[i]+1;
  end;
  writeln(f[n]);
end.