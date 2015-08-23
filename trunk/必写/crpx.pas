var n,i,j:longint;
  a:array[0..10000]of longint;
begin
  readln(n);
  for i:=1 to n do read(a[i]);
  for i:=2 to n do begin
    a[0]:=a[i];j:=i-1;
    while (a[0]<a[j])and(j>0) do begin
      a[j+1]:=a[j];
      j:=j-1;
    end;
    a[j+1]:=a[0];
  end;
  for i:=1 to n do write(a[i]:4);
end.