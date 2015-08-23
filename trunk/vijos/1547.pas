var min,n,i,j:longint;
  a:array[1..1000,1..1000]of longint;
procedure asd(now,c1,c2,c3,you:longint);
begin
  if now=n then begin
    if min>you then min:=you;
    exit;
  end;
  asd(now+1,now+1,c2,c3,you+a[c1,now+1]);
  asd(now+1,c1,now+1,c3,you+a[c2,now+1]);
  asd(now+1,c1,c2,now+1,you+a[c3,now+1]);
end;
begin
  readln(n);
  for i:=1 to n-1 do
    for j:=i+1 to n do read(a[i,j]);
  min:=maxlongint;
  asd(1,1,1,1,0);
  writeln(min);
end.