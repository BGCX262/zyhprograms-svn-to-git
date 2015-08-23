var i,n:longint;
  a:array[1..100]of longint;
  b:array[1..100]of boolean;
procedure asd(step:longint);
var i:longint;
begin
  if step=n+1 then begin
    for i:=1 to n do write(a[i],' ');
    writeln;
    exit;
  end;
  for i:=1 to n do
    if b[i] then begin
      b[i]:=false;
      a[step]:=i;
      asd(step+1);
      b[i]:=true;
    end;
end;
begin
  readln(n);
  fillchar(b,sizeof(b),true);
  asd(1);
end.