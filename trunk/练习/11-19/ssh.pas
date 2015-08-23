var b:array[1..20]of boolean;
  a:array[1..20]of longint;
  n,s:longint;
function ss(n:longint):boolean;
var i:longint;
begin
  if (n=1)or(n=0) then exit(false);
  for i:=2 to trunc(sqrt(n)) do
    if n mod i=0 then exit(false);
  exit(true);
end;
procedure asd(step:longint);
var i:longint;
  f:boolean;
begin
  if step=n+1 then begin
    if ss(a[n]+a[1]) then begin
      for i:=1 to n do write(a[i],' ');
      writeln;
      inc(s);
      if s=10 then halt;
    end;
    exit;
  end;
  for i:=1 to n do
    if (b[i])and(ss(i+a[step-1])) then begin
      b[i]:=false;
      a[step]:=i;
      asd(step+1);
      b[i]:=true;
    end;
end;
begin
  readln(n);
  if (n=17)or(n=1)or(n=11)or(n=13)or(n=15)or(n=19) then halt;
  a[1]:=1;
  fillchar(b,sizeof(b),true);
  b[1]:=false;
  asd(2);
end.