var a:array[0..1000,0..1000]of char;
  b,c:array[1..50,1..50]of longint;
  i,j,n,m,maxm,maxn,q,ny,nx,k:longint;
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
  readln(m,n);
  fillchar(a,sizeof(a),'.');
  for i:=1 to m do
    for j:=1 to n do begin
      read(b[i,j]);
      q:=b[i,j]*3+3;
      c[i,j]:=q+2*(m-i);
      if c[i,j]>maxn then maxn:=c[i,j];
    end;
  maxm:=2*m+4*n+1;
  for i:=1 to m do begin
    ny:=-3+2*(m-i);
    for j:=1 to n do begin
      ny:=ny+4;
      nx:=maxn-2*(m-i)-5;
      for k:=1 to b[i,j] do begin
        asd(nx,ny);
        nx:=nx-3;
      end;
    end;
  end;
  for i:=1 to maxn do begin
    for j:=1 to maxm do write(a[i,j]);
    writeln;
  end;
end.