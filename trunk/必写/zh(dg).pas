var a:array[1..1000]of longint;
  b:array[1..1000]of boolean;
  m,n:longint;
procedure asd(step,j:longint);
var i:longint;
begin
  if step=m+1 then begin
    for i:=1 to m do write(a[i]);
    writeln;
    exit;
  end;
  for i:=1 to n do
    if (b[i])and(i>j) then begin
      b[i]:=false;
      a[step]:=i;
      asd(step+1,i);
      b[i]:=true;
    end;
end;
begin
  readln(n,m);
  fillchar(b,sizeof(b),true);
  asd(1,0);
end.