const x1:array[1..4]of integer=(-2,-1,1,2);
  y1:array[1..4]of integer=(1,2,2,1);
var b:array[1..10,1..10]of boolean;
  a:array[1..100,1..2]of longint;
  n,m,sum,qx,qy,zx,zy:longint;
procedure asd(x,y,s:longint);
var x2,y2,i:longint;
begin
    if (x=zx)and(y=zy) then begin
    inc(sum);
    write('(1,1)');
    for i:=1 to s-1 do write('->(',a[i,1],',',a[i,2],')');
    writeln;
    exit;
    end;
  for i:=1 to 4 do begin
    x2:=x+x1[i];
    y2:=y+y1[i];
    if (x2>0)and(x2<=n)and(y2>0)and(y2<=m)and(b[x2,y2]) then begin
      b[x2,y2]:=false;
      a[s,1]:=x2;
      a[s,2]:=y2;
      asd(x2,y2,s+1);
      b[x2,y2]:=true;
    end;
  end;
end;
begin
  readln(n,m);
  readln(qx,qy,zx,zy);
  fillchar(b,sizeof(b),true);
  b[qx,qy]:=false;
  asd(qx,qy,1);
  writeln(sum);
end.
