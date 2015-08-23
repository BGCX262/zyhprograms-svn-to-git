var sum,i,n,m:longint;
  a:array[1..20]of longint;
function ss(n:longint):boolean;
var i:longint;
begin
  if (n=1)or(n=0) then exit(false);
  for i:=2 to trunc(sqrt(n)) do
    if n mod i=0 then exit(false);
  exit(true);
end;
procedure asd(step,j,s:longint);
var i:longint;
begin
  if step=m+1 then begin
    if ss(s) then inc(sum);
    exit;
  end;
  for i:=j+1 to n do
  begin
    asd(step+1,i,s+a[i]);
  end;
end;
begin
  readln(n,m);
  for i:=1 to n do read(a[i]);
  asd(1,0,0);
  writeln(sum);
end.