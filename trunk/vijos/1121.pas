var g,f:array[-10..15,-10..15]of qword;
  n,m,x,y,i,j:longint;
begin
  readln(n,m,x,y);
  g[x-2,y-1]:=1;
  g[x-2,y+1]:=1;
  g[x-1,y-2]:=1;
  g[x-1,y+2]:=1;
  g[x+2,y-1]:=1;
  g[x+2,y+1]:=1;
  g[x+1,y+2]:=1;
  g[x+1,y-2]:=1;
  g[x,y]:=1;
  for i:=0 to n do
    for j:=0 to m do
      if g[i,j]=1 then f[i,j]:=0
      else if (i=0)and(j=0) then f[i,j]:=1
      else if i=0 then f[i,j]:=f[i,j-1]
      else if j=0 then f[i,j]:=f[i-1,j]
      else f[i,j]:=f[i-1,j]+f[i,j-1];
  writeln(f[n,m]);
end.
