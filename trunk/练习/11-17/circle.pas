var a,b,c,q,c1:array[1..1000]of longint;
  w,w1,w2,p,i,k,l,j,l1:longint;
  s:qword;
  n:string;
function ss(m:longint):boolean;
var i:longint;
begin
  for i:=1 to m do
    if a[i]<>ord(n[l-i+1])-48 then exit(false);
  exit(true);
end;
procedure cheng;
var i,j:longint;
  x:qword;
begin
  for i:=1 to w do
  begin
    x:=0;
    for j:=1 to w1 do
    begin
      x:=a[i]*b[j]+x+c[i+j-1];
      c[i+j-1]:=x mod 10;
      x:=x div 10;
    end;
    c[i+j]:=x mod 10;
  end;
  w2:=w+w1;
  while (c[w2]=0)and(w2>1) do dec(w2);
end;
begin
  readln(n);
  val(copy(n,pos(' ',n)+1,length(n)-pos(' ',n)),k);
  delete(n,pos(' ',n),length(n)-pos(' ',n)+1);
  l:=length(n);
  for j:=l downto l do a[l-j+1]:=ord(n[j])-48;
  w:=1;
  w1:=1;
  s:=1;
  b:=a;
  for i:=1 to k do begin
    p:=0;
    repeat
      fillchar(c,sizeof(c),0);
      inc(p);
      cheng;
      a:=c;
      w:=w2;
      if p>10 then begin
        writeln(-1);
        halt;
      end;
      fillchar(c,sizeof(c),0);
    until ss(i);
    s:=s*p;
    if k<>i then begin
    fillchar(a,sizeof(a),0);
    for j:=l downto l-i do a[l-j+1]:=ord(n[j])-48;
    b:=a;
    w1:=w;
    for j:=1 to p-1 do begin
      cheng;
      b:=c;
      w1:=w2;
      c1:=c;
      l1:=w2;
      fillchar(c,sizeof(c),0);
    end;
    b:=c1;
    w1:=l1;
    end;
  end;
  writeln(s);
end.
