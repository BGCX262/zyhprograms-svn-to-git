var map:array[1..80,1..80]of longint;
  qs:qword;
  a,c,b:array[1..1000]of longint;
  i,j,n,m,bj,w2,w1,l:longint;
  w,t:array[1..80]of longint;
procedure jia;
var x:qword;
  i:longint;
begin
  x:=0;
  if w1>w2 then l:=w1
          else l:=w2;
  for i:=1 to l do begin
    x:=a[i]+b[i]+x;
    c[i]:=x mod 10;
    x:=x div 10;
  end;
  while x>0 do begin
    inc(l);
    c[l]:=x mod 10;
    x:=x div 10;
  end;
end;
procedure asd(k:longint);
var i:longint;
  x:qword;
begin
  x:=0;
  for i:=1 to w2 do begin
    x:=a[i]*k+x;
    a[i]:=x mod 10;
    x:=x div 10;
  end;
  while x>0 do begin
    inc(w2);
    a[w2]:=x mod 10;
    x:=x div 10;
  end;
end;
function zb(j:longint):longint;
var min,i,d:longint;
begin
  min:=maxlongint;
  for i:=1 to m do
    if (map[j,i]<min)and(map[j,i]<>-1) then begin
      min:=map[j,i];
      d:=i;
    end;
  zb:=d-t[j];
end;
function yb(j:longint):longint;
var min,i,d:longint;
begin
  min:=maxlongint;
  for i:=1 to m do
    if (map[j,i]<min)and(map[j,i]<>-1) then begin
      min:=map[j,i];
      d:=i;
    end;
  yb:=w[j]-d;
end;
begin
  assign(input,'game.in');
  assign(output,'game.out');
  reset(input);
  rewrite(output);
  readln(n,m);
  for i:=1 to n do
    for j:=1 to m do read(map[i,j]);
  for i:=1 to n do begin
    t[i]:=1;
    w[i]:=m;
  end;
  i:=0;
  while i<m do
  begin
    inc(i);
    qs:=0;
    for j:=1 to n do begin
      if zb(j)<yb(j) then bj:=1
                     else bj:=0;
      if bj=1 then begin
        qs:=qs+map[j,t[j]];
        map[j,t[j]]:=-1;
        t[j]:=t[j]+1;
      end
              else begin
                qs:=qs+map[j,w[j]];
                map[j,w[j]]:=-1;
                w[j]:=w[j]-1;
              end;
    end;
    fillchar(a,sizeof(a),0);
    w2:=1;
    a[1]:=1;
    b:=c;
    w1:=l;
    for j:=1 to i do asd(2);
    asd(qs);
    jia;
  end;
  for i:=l downto 1 do write(c[i]);
  close(input);
  close(output);
end.