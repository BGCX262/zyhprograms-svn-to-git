var n,i,g,sx,j:integer;
    a,y,s:array[1..1000]of integer;
procedure swap(var a,b:integer);
var t:integer;
begin
  t:=a;
  a:=b;
  b:=t;
end;
begin
  assign(input,'scholar.in');reset(input);
  assign(output,'scholar.out');rewrite(output);
  readln(n);
  for i:=1 to n do
  begin
    readln(y[i],sx,g);
    s[i]:=y[i]+sx+g;
    a[i]:=i;
  end;
  for i:=1 to n-1 do
  for j:=i+1 to n do
  if s[i]<s[j] then begin
  swap(s[i],s[j]);
  swap(a[i],a[j]);
  swap(y[i],y[j]);
  end
  else if s[i]=s[j] then
  if y[i]<y[j] then
  begin
    swap(s[i],s[j]);
    swap(y[i],y[j]);
    swap(a[i],a[j]);
  end
  else if y[i]=y[j] then
  if a[i]>a[j] then
  begin
    swap(a[i],a[j]);
    swap(s[i],s[j]);
    swap(y[i],y[j]);
  end;
  for i:=1 to 5 do
  writeln(a[i],' ',s[i]);
  close(input);close(output);
end.
