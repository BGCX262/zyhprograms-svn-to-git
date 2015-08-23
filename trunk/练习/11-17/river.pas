var s1,t,l,i,n,x,min:longint;
  b:packed array[1..20000]of boolean;
procedure asd(step,s:longint);
var i:longint;
begin
  if min<s then exit;
  if step>l then begin
    if min>s then min:=s;
    exit;
  end;
  for i:=s1 to t do
    if b[i+step] then asd(step+i,s+1)
                 else asd(step+i,s);
end;
begin
  readln(l);
  readln(s1,t,n);
  for i:=1 to n do begin
    read(x);
    b[x]:=true;
  end;
  min:=maxlongint;
  asd(0,0);
  writeln(min);
end.