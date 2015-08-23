var f:array[1..50,1..50,1..100]of longint;
  a,b:array[1..50,1..50]of longint;
  n,m,x1,x2,y1,y2,i,j,flag:longint;
procedure asd(x,y:longint);
var i:longint;
begin
  if a[x,y-1]>a[x-1,y] then a[x,y]:=a[x,y-1]
  else a[x,y]:=a[x-1,y];
  for i:=1 to a[x,y] do begin
    f[x,y,i]:=f[x-1,y,i]+f[x,y-1,i]+f[x,y,i];
    f[x,y,i+1]:=f[x,y,i+1]+f[x,y,i] div 10;
    f[x,y,i]:=f[x,y,i] mod 10;
  end;
  if f[x,y,a[x,y]+1]>0 then inc(a[x,y]);
end;
begin
  readln(flag);
  readln(n,m);
  if flag=2 then begin
    read(x1,y1);
    read(x2,y2);
    for i:=x1 to x2 do
      for j:=y1 to y2 do b[i,j]:=1;
  end;
  for i:=1 to 50 do
    for j:=1 to 50 do a[i,j]:=1;
  for i:=1 to n do
    for j:=1 to m do
      if b[i,j]=1 then f[i,j,1]:=0
      else if (i=1)and(j=1) then f[i,j,1]:=1
        else if (i=1) then f[i,j]:=f[i,j-1]
          else if (j=1) then f[i,j]:=f[i-1,j]
            else asd(i,j);
  for i:=a[n,m] downto 1 do write(f[n,m,i]);
end.