type aa=array[1..200]of longint;
var a,b,c:aa;
  i,j:longint;
  x,y:string;
function f(var a,b:aa):boolean;
  var i:longint;
begin
  i:=200;f:=true;
  while (a[i]=b[i])and(i>1) do dec(i);
  if a[i]<b[i] then exit(false);
end;
procedure minus(var a,b:aa);
  var i:longint;
begin
  for i:=1 to 200 do
  begin
    if a[i]<b[i] then begin
      a[i+1]:=a[i+1]-1;
      a[i]:=a[i]+10;
    end;
    a[i]:=a[i]-b[i];
  end;
end;
procedure plus(j:longint;var c:aa);
  var i,s,g:longint;
begin
  g:=0;
  c[j]:=c[j]+1;
  for i:=1 to 200 do
  begin
    s:=c[i]+g;
    c[i]:=s mod 10;
    g:=s div 10;
  end;
end;
procedure chu(var a,b:aa);
  var a1,b1,i,j,k:longint;
begin
  j:=1;
  i:=200;
  while a[i]=0 do dec(i);
  a1:=i;
  i:=200;
  while b[i]=0 do dec(i);
  b1:=i;
  j:=j+a1-b1;
  k:=j;
  while (k>1) do
  begin
    for i:=200 downto 2 do b[i]:=b[i-1];
    b[1]:=0;
    k:=k-1;
  end;
  while j>0 do begin
  while f(a,b) do
  begin
    plus(j,c);
    minus(a,b);
  end;
  j:=j-1;
  for i:=1 to a1-1 do
    begin
      b[i]:=b[i+1];
      b[i+1]:=0;
    end;
  end;
end;
begin
  readln(x);
  readln(y);
  for i:=1 to length(x) do a[i]:=ord(x[length(x)-i+1])-48;
  for i:=1 to length(y) do b[i]:=ord(y[length(y)-i+1])-48;
  chu(a,b);
  i:=200;
  while (c[i]=0)and(i>1) do dec(i);
  for j:=i downto 1 do write(c[j]);
  writeln;
  i:=200;
  while (a[i]=0)and(i>1) do dec(i);
  for j:=i downto 1 do write(a[j]);
end.