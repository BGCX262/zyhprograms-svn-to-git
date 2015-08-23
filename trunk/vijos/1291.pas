var a,b:array[1..2000]of longint;
  c:array[1..2000]of boolean;
  i,j,max,i1,sum,n,m:longint;
begin
  readln(n,m);
  for i:=1 to n do readln(a[i]);
  for i:=1 to m do readln(b[i]);
  fillchar(c,sizeof(c),true);
  for i:=1 to n do begin
    max:=0;
    for j:=1 to m do
      if (max<b[j])and(a[i]>b[j])and(c[j]) then begin
        i1:=j;
        max:=b[j];
      end;
    if max<>0 then c[i1]:=false;
  end;
  for i:=1 to m do
  if c[i] then inc(sum);
  writeln(sum);
end.

