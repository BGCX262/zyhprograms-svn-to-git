var a:array[1..100,1..100]of char;
  i,j,n,m,x,y,max,s,i1,j1:longint;
begin
  readln(n);
  readln(m);
  for i:=1 to n do begin
    for j:=1 to n do read(a[i,j]);
    readln;
  end;
  for i:=1 to n do
    for j:=1 to n do
    begin
      x:=i+m-1;
      y:=j+m-1;
      if x>n then x:=n;
      if y>n then y:=n;
      s:=0;
      for i1:=i to x do
        for j1:=j to y do
          if a[i1,j1]='#' then inc(s);
      if s>max then max:=s;
    end;
  writeln(max);
end.