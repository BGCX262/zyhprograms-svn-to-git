var a:array[1..10000]of longint;
  w,i,j,n:longint;
  x,y:qword;
  s:string;
procedure asd(k:longint);
var x,i:longint;
begin
  x:=0;
  for i:=1 to w do begin
    x:=x+a[i]*k;
    a[i]:=x mod 10;
    x:=x div 10;
  end;
  while x>0 do begin
    inc(w);
    a[w]:=x mod 10;
    x:=x div 10;
  end;
end;
begin
  readln(n);
  a[1]:=1;
  w:=1;
  for i:=n*2 downto n+1 do asd(i);
  for j:=2 to n+1 do begin
    s:='';x:=0;y:=0;
    for i:=w downto 1 do begin
      x:=(y*10+a[i]) div j;
      y:=(y*10+a[i]) mod j;
      s:=s+chr(x+48);
    end;
    while (s[1]='0')and(length(s)>1) do delete(s,1,1);
    w:=length(s);
    fillchar(a,sizeof(a),0);
    for i:=1 to w do a[i]:=ord(s[w-i+1])-48;
  end;
  for i:=w downto 1 do write(a[i]);
end.