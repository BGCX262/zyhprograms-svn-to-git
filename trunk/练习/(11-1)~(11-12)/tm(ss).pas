const xx:array[1..8]of longint=(-1,-1,1,1,-2,-2,2,2);
  yy:array[1..8]of longint=(-2,2,-2,2,-1,1,-1,1);
type
asdf=record
     x,y:longint;
     end;
var n,m:longint;
a:array[1..10000]of asdf;
b:array[1..1000,1..1000]of boolean;
procedure asd(x,y,step:longint);
var x1,y1,i:longint;
begin
  if (x=n)and(y=m) then begin
    write('(1,1)->');
    for i:=1 to step-2 do write('(',a[i].x,',',a[i].y,')->');
    writeln('(',a[step-1].x,',',a[step-1].y,')');
    exit;
  end;
  for i:=1 to 8 do
  begin
    x1:=x+xx[i];
    y1:=y+yy[i];
    if (x1>0)and(x1<=n)and(y1>0)and(y1<=m) then
      if b[x1,y1] then begin
        a[step].x:=x1;
        a[step].y:=y1;
        b[x1,y1]:=false;
        asd(x1,y1,step+1);
        b[x1,y1]:=true;
      end;
  end;
end;
begin
  readln(n,m);
  fillchar(b,sizeof(b),true);
  b[1,1]:=false;
  asd(1,1,1);
end.
