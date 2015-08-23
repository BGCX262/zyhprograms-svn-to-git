type arr=array[1..10000]of longint;
var a,b,st,x,y:ansistring;
  i,n,bj,w,w1:longint;
function dy(a,b:ansistring):boolean;
begin
  if length(a)>length(b) then exit(true);
  if length(b)>length(a) then exit(false);
  if a>=b then exit(true);
  if a<b then exit(false);
end;
procedure jian1(var s:ansistring;s1,s2:ansistring);
var t:ansistring;j,i,l1,l2:longint;
  c,a,b:arr;
begin
 while(s2[1]='0')and(length(s2)>0)do delete(s2,1,1);
 if(length(s1)<length(s2))or(length(s1)=length(s2))and(s1<s2)then
 begin
 t:=s1;s1:=s2;s2:=t;
 end;
 l1:=length(s1);
 l2:=length(s2);
 fillchar(a,sizeof(a),0);
 fillchar(b,sizeof(b),0);
 fillchar(c,sizeof(c),0);
 for i:=1 to l1 do a[i]:=ord(s1[l1-i+1])-48;
 for i:=1 to l2 do b[i]:=ord(s2[l2-i+1])-48;
 for i:=1 to l1 do
 begin
   if a[i]<b[i] then
    begin
      a[i]:=a[i]+10;
      a[i+1]:=a[i+1]-1;
    end;
    c[i]:=a[i]-b[i];
 end;
 while(c[l1]=0)and(l1>1)do dec(l1);
 s:='';
 for j:=l1 downto 1 do s:=s+chr(c[j]+48);
end;
procedure chu(var s1,s2:ansistring);
var l1,l2,i,j:longint;s,s3:ansistring;
begin
 l1:=length(s1);l2:=length(s2);
 s:='';
 s3:='';
 for i:=1 to l1 do
 begin
    j:=0;
    s3:=s3+s1[i];
    while(s3[1]='0')and(length(s3)>1)do delete(s3,1,1);
    while(length(s3)>length(s2))or(length(s3)=length(s2))and(s3>=s2)do
    begin
      jian1(s3,s3,s2);
      inc(j);
    end;
    s:=s+chr(j+48);
 end;
 while(s[1]='0')and(length(s)>1)do delete(s,1,1);
 s1:=s;
end;
procedure jian(var s1,s2:ansistring);
var w,w1,i:longint;
  a,b,c:arr;
  t:ansistring;
begin
  if dy(s2,s1) then begin
    t:=s1;
    s1:=s2;
    s2:=t;
  end;
  w:=length(s1);
  w1:=length(s2);
  fillchar(a,sizeof(a),0);
  fillchar(b,sizeof(b),0);
  fillchar(c,sizeof(c),0);
  for i:=1 to w do a[i]:=ord(s1[w-i+1])-48;
  for i:=1 to w1 do b[i]:=ord(s2[w1-i+1])-48;
  for i:=1 to w do
  begin
    c[i]:=a[i]-b[i];
    if c[i]<0 then begin
      a[i+1]:=a[i+1]-1;
      c[i]:=c[i]+10;
    end;
  end;
  while (c[w]=0)and(w>1) do dec(w);
  s1:='';
  for i:=w downto 1 do s1:=s1+chr(c[i]+48);
end;
procedure jia(var s1,s2:ansistring);
var x,i,w,w1:longint;
  a,b:arr;
begin
  w:=length(s1);
  w1:=length(s2);
  for i:=1 to w do a[w-i+1]:=ord(s1[i])-48;
  for i:=1 to w1 do b[w1-i+1]:=ord(s2[i])-48;
  if w>w1 then w1:=w;
  s1:='';
  x:=0;
  for i:=1 to w1 do
  begin
    x:=a[i]+b[i]+x;
    s1:=chr(x mod 10+48)+s1;
    x:=x div 10;
  end;
  while (s1[1]='0')and(length(s1)>0) do delete(s1,1,1);
end;
procedure mul(var s1,s2:ansistring);
var
  l1,l2,i,j:longint;
  a,b,c:arr;
begin
  fillchar(a,sizeof(a),0);
  fillchar(b,sizeof(b),0);
  fillchar(c,sizeof(c),0);
  l1:=length(s1);
  l2:=length(s2);
  for i:=1 to l1 do a[i]:=ord(s1[l1+1-i])-48;
  for i:=1 to l2 do b[i]:=ord(s2[l2+1-i])-48;
  for i:=1 to l1 do
    for j:=1 to l2 do
    inc(c[i+j-1],a[i]*b[j]);
  for i:=1 to l1+l2-1 do
  begin
    inc(c[i+1],c[i] div 10);
    c[i]:=c[i] mod 10;
  end;
  if c[l1+l2]<>0 then j:=l1+l2
  else j:=l1+l2-1;
  s1:='';
  for i:=1 to j do s1:=s1+chr(c[j+1-i]+48);
end;
procedure dj(var b:ansistring);
var a:arr;
  i,x,y,w:longint;
  s:ansistring;
begin
  w:=length(b);
  for i:=1 to w do a[i]:=ord(b[i])-48;
  s:='';x:=0;y:=0;
  for i:=1 to w do begin
    x:=(y*10+a[i]) div 2;
    y:=(y*10+a[i]) mod 2;
    s:=s+chr(x+48);
  end;
  while (s[1]='0')and(length(s)>1) do delete(s,1,1);
  b:=s;
end;
procedure jh;
var c:ansistring;
begin
  c:=a;
  a:=b;
  b:=c;
end;
procedure ss(var a,b:ansistring;fh:char);
var i:longint;
  c,e:ansistring;
begin
  case fh of
    '*':mul(a,b);
    '/':chu(a,b);
    '+':jia(a,b);
    '-':jian(a,b);
    '^':begin
      c:=a;
      a:='1';
      while b<>'0' do begin
        if (ord(b[length(b)])-48)mod 2=1 then mul(a,c);
        mul(c,c);
        dj(b);
      end;
    end;
  end;
end;
function wz(st:ansistring):longint;
var i:longint;
begin
  for i:=1 to length(st) do
    if st[i]in['*','+','-','/','^'] then begin
      wz:=i;
      break;
    end;
end;
begin
  readln(st);
  a:=copy(st,1,pos('/',st)-1);
  b:=copy(st,pos('/',st)+1,length(st)-pos('/',st));
  readln(n);
  for i:=1 to n do
  begin
    readln(st);
    if length(st)>4 then begin
      if st[5]='i' then bj:=1
      else bj:=2;
      delete(st,1,6);
      if (st[5]='i')and(length(st)>5) then x:=a
      else if (st[5]='u')and(length(st)>5) then x:=b
      else x:=copy(st,1,wz(st)-1);
      if (st[length(st)]='u')and(length(st)>5) then y:=b
      else if (st[length(st)]='i')and(length(st)>5) then y:=a
      else y:=copy(st,wz(st)+1,length(st)-wz(st));
      ss(x,y,st[wz(st)]);
      if bj=1 then a:=x
      else b:=x;
    end
    else jh;
  end;
  if (b='0') then writeln('Error')
  else write(a,'/',b);
end.