var a,b:array[1..10000]of boolean;
  n,m,i,l,next:longint;
begin
  readln(n,m);
  fillchar(a,sizeof(a),true);
  next:=2;
  repeat
    while not(a[next]) do inc(next);
    a[next]:=false;
    inc(i);
    b[next]:=true;
    l:=next;
    while l+next<=m do begin
      l:=l+next;
      if a[l] then inc(i);
      a[l]:=false;
    end;
  until m-n+1=i;
  for i:=n to m do
    if b[i] then write(i:4);
end.