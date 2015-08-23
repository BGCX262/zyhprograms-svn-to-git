var a:array[0..10000]of boolean;
  i,n,m,sum,j,x,y:longint;
begin
  readln(m,n);
  fillchar(a,sizeof(a),true);
  for i:=1 to n do begin
    readln(x,y);
    for j:=x to y do a[j]:=false;
  end;
  for i:=0 to m do if a[i] then inc(sum);
  writeln(sum);
end.