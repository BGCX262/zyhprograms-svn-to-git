var s,x,sum,i,k,n:longint;
begin
  readln(n,k);
  for i:=1 to n do begin
    read(x);
    s:=0;
    while x<>0 do begin
      inc(s);
      read(x);
    end;
    if s>=k then inc(sum);
  end;
  writeln(sum);
end. 
    