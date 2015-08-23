var a:array[1..100,1..100]of char;
  n,m,i,j,sum:longint;
procedure asd(i,j:longint);
begin
  if a[i,j]='#' then begin
    a[i,j]:='-';
    if (i>0)and(i<=n)and(j+1>0)and(j+1<=m) then asd(i,j+1);
    if (i>0)and(i<=n)and(j-1>0)and(j-1<=m) then asd(i,j-1);
    if (i-1>0)and(i-1<=n)and(j>0)and(j<=m) then asd(i-1,j);
    if (i+1>0)and(i+1<=n)and(j>0)and(j<=m) then asd(i+1,j);
    if (i>0)and(i<=n)and(j+2>0)and(j+2<=m) then asd(i,j+2);
    if (i>0)and(i<=n)and(j-2>0)and(j-2<=m) then asd(i,j-2);
    if (i-2>0)and(i-2<=n)and(j>0)and(j<=m) then asd(i-2,j);
    if (i+2>0)and(i+2<=n)and(j>0)and(j<=m) then asd(i+2,j);
    if (i+1>0)and(i+1<=n)and(j+1>0)and(j+1<=m) then asd(i+1,j+1);
    if (i+1>0)and(i+1<=n)and(j-1>0)and(j-1<=m) then asd(i+1,j-1);
    if (i-1>0)and(i-1<=n)and(j+1>0)and(j+1<=m) then asd(i-1,j+1);
    if (i-1>0)and(i-1<=n)and(j-1>0)and(j-1<=m) then asd(i-1,j-1);
  end;
end;
begin
  readln(n,m);
  for i:=1 to n do begin
    for j:=1 to m do read(a[i,j]);
    readln;
  end;
  for i:=1 to n do
    for j:=1 to m do
      if a[i,j]='#' then begin
        asd(i,j);
        inc(sum);
      end;
  writeln(sum);
end.