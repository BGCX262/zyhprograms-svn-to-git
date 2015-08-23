var max,i,j,n:integer;
    a:array[1..20,1..20]of integer;
    b:array[1..20]of integer;
    c:array[1..20]of boolean;
procedure pp(step:integer);
var i,k,s:integer;
begin
  if step=n+1 then
  begin
    s:=1;
    k:=0;
    for i:=1 to n do
    begin
      inc(k);
    s:=s*a[k,b[i]];
    end;
    if s>max then max:=s;
    exit;
  end;
  for i:=1 to n do
  if c[i] then
  begin
    c[i]:=false;
    b[step]:=i;
    pp(step+1);
    c[i]:=true;
  end;
end;
begin
  readln(n);
  for i:=1 to n do
  for j:=1 to n do
  read(a[i,j]);
  fillchar(b,sizeof(b),0);
  fillchar(c,sizeof(c),true);
  pp(1);
  writeln(max/10000:0:6);
end.