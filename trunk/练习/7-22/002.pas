var a,l,u,r,f:array[0..2500,0..2500] of longint;
    i,j,n,m,t,s:longint;
begin
readln(n,m);
for i:=1 to n do begin
for j:=1 to m do
read(a[i,j]);
readln;
end;
for i:=1 to n do
    for j:=m-1 downto 1 do
      if a[i,j+1]=0 then r[i,j]:=r[i,j+1]+1;
for i:=1 to n do
    for j:=2 to m do
      if a[i,j-1]=0 then l[i,j]:=l[i,j-1]+1;
for i:=2 to n do
    for j:=1 to m do
      if a[i-1,j]=0 then u[i,j]:=u[i-1,j]+1;
   for i:=1 to n do
     for j:=1 to m do
       if a[i,j]=1 then begin
         t:=f[i-1,j-1];
         if t>l[i,j] then t:=l[i,j];
         if t>u[i,j] then t:=u[i,j];
         f[i,j]:=t+1;
         if s<f[i,j] then s:=f[i,j];
       end else f[i,j]:=0;
   fillchar(f,sizeof(f),0);
   for i:=1 to n do
     for j:=m downto 1 do
       if a[i,j]=1 then begin
         t:=f[i-1,j+1];
         if t>r[i,j] then t:=r[i,j];
         if t>u[i,j] then t:=u[i,j];
         f[i,j]:=t+1;
         if s<f[i,j] then s:=f[i,j];
       end else f[i,j]:=0;
   writeln(s);
end.
