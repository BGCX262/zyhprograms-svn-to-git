type ar=record
       x,y:longint;
     end;
const xx:array[1..4]of longint=(1,-1,2,-2);
  yy:array[1..4]of longint=(2,2,1,1);
var b:array[1..100,1..100]of boolean;
  qx,qy,zx,zy,n,m,sum,xy,i,j:longint;
  a:array[1..10000]of ar;
  f:array[-1..100,-1..100]of longint;
procedure asd(x,y,s:longint);
var i,x1,y1:longint;
begin
  if (x=zx)and(y=zy) then begin
    if xy=1 then begin
      write('(1,1)->');
      for i:=1 to s-2 do write('(',a[i].x,',',a[i].y,')->');
      writeln('(',a[s-1].x,',',a[s-1].y,')');
    end;
    inc(sum);
    exit;
  end;
  for i:=1 to 4 do begin
    x1:=x+xx[i];
    y1:=y+yy[i];
    if (x1>0)and(x1<=n)and(y1>0)and(y1<=m) then
      if b[x1,y1] then begin
        b[x1,y1]:=false;
        a[s].x:=x1;
        a[s].y:=y1;
        asd(x1,y1,s+1);
        b[x1,y1]:=true;
      end;
  end;
end;
begin
  readln(xy);
  fillchar(b,sizeof(b),true);
  if xy=1 then begin
    readln(n,m);
    zx:=n;
    zy:=m;
    asd(1,1,1);
    if sum=0 then writeln('NO');
  end
  else begin
    readln(n,m,qy,qx,zy,zx);
    f[qx,qy]:=1;
    for j:=1 to m do
      for i:=1 to n do
        f[i,j]:=f[i-1,j-2]+f[i-2,j-1]+f[i+1,j-2]+f[i+2,j-1]+f[i,j];
    writeln(f[zx,zy]);
  end;
end.
