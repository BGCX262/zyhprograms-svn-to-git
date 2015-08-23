var a:packed array[1..1000,1..1000]of char;
  b:array[1..50,1..50]of integer;
  n,m,maxh,maxl,i,j,x,y,k,i1,j1:longint;
procedure asd(x,y:longint);
begin
  a[x,y+2]:='+';
  a[x,y+3]:='-';
  a[x,y+4]:='-';
  a[x,y+5]:='-';
  a[x,y+6]:='+';
  a[x+1,y+1]:='/';
  a[x+1,y+2]:=' ';
  a[x+1,y+3]:=' ';
  a[x+1,y+4]:=' ';
  a[x+1,y+5]:='/';
  a[x+1,y+6]:='|';
  a[x+2,y]:='+';
  a[x+2,y+1]:='-';
  a[x+2,y+2]:='-';
  a[x+2,y+3]:='-';
  a[x+2,y+4]:='+';
  a[x+2,y+5]:=' ';
  a[x+2,y+6]:='|';
  a[x+3,y]:='|';
  a[x+3,y+1]:=' ';
  a[x+3,y+2]:=' ';
  a[x+3,y+3]:=' ';
  a[x+3,y+4]:='|';
  a[x+3,y+5]:=' ';
  a[x+3,y+6]:='+';
  a[x+4,y]:='|';
  a[x+4,y+1]:=' ';
  a[x+4,y+2]:=' ';
  a[x+4,y+3]:=' ';
  a[x+4,y+4]:='|';
  a[x+4,y+5]:='/';
  a[x+5,y]:='+';
  a[x+5,y+1]:='-';
  a[x+5,y+2]:='-';
  a[x+5,y+3]:='-';
  a[x+5,y+4]:='+';
end;
begin
  readln(n,m);
  for i:=1 to n do
    for j:=1 to m do read(b[i,j]);
  maxl:=n*2+m*4+1;
  for i:=1 to n do
    for j:=1 to m do
      if (i-1)*2+1+3*b[n-i+1,j]+3-1>maxh then maxh:=(i-1)*2+1+3*b[n-i+1,j]+3-1;
  for i:=1 to maxh do
    for j:=1 to maxl do a[i,j]:='.';
  for i:=1 to n do begin
    y:=(n-i)*2+1;
    for j:=1 to m do
    begin
      x:=maxh-5-(n-i)*2;
      for k:=1 to b[i,j] do begin
        asd(x,y);
        x:=x-3;
      end;
      y:=y+4;
    end;
  end;
  for i:=1 to maxh do begin
    for j:=1 to maxl do write(a[i,j]);
    writeln;
  end;
end.

