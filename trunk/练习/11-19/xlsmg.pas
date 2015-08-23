const xx:array[1..4]of longint=(0,0,-1,1);
  yy:array[1..4]of longint=(1,-1,0,0);
var a,b:array[0..100,0..100]of boolean;
  h:array[1..500000,1..3]of longint;
  qx,qy,zx,zy,i,x1,y1,t,w,n,m,min,sum:longint;
procedure asd(x,y,s:longint);
var x1,y1,i:longint;
begin
  if min<s+abs(x-zx)+abs(y-zy)
  then exit;
  if (x=zx)and(y=zy) then begin
    if min=s then inc(sum);
    exit;
  end;
  for i:=1 to 4 do begin
    x1:=x+xx[i];
    y1:=y+yy[i];
    if (x1>0)and(x1<=n)and(y1>0)and(y1<=m) then
      if b[x1,y1] then begin
        b[x1,y1]:=false;
        asd(x1,y1,s+1);
        b[x1,y1]:=true;
      end;
  end;
end;
begin
  readln(n,m,qx);
  fillchar(a,sizeof(a),true);
  fillchar(b,sizeof(b),true);
  for i:=1 to qx do begin
    readln(zx,zy);
    a[zx,zy]:=false;
    b[zx,zy]:=false;
  end;
  readln(qx,qy);
  readln(zx,zy);
  inc(t);
  inc(w);
  h[1,1]:=qx;
  h[1,2]:=qy;
  min:=maxlongint;
  h[1,3]:=0;
  repeat
    for i:=1 to 4 do begin
      x1:=h[t,1]+xx[i];
      y1:=h[t,2]+yy[i];
      if (x1>0)and(x1<=n)and(y1>0)and(y1<=m) then
        if a[x1,y1] then
        begin
          a[x1,y1]:=false;
          inc(w);
          h[w,1]:=x1;
          h[w,2]:=y1;
          h[w,3]:=1+h[t,3];
        end;
    end;
    inc(t);
    if (h[t,1]=zx)and(h[t,2]=zy)and(min>h[t,3]) then min:=h[t,3];
  until t>w;
  if min=maxlongint then begin
    writeln('No Solution!');
    exit;
  end
                    else begin
                      asd(qx,qy,0);
                      writeln(min);
                      writeln(sum);
                    end;
end.

end.
