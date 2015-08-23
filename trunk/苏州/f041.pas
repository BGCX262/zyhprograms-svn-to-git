var x,a,b,c,d:real;
  i,s:longint;
begin
  readln(a,b,c,d);
  for i:=-100000 to 100000 do
  begin
    x:=i/1000;
    if abs(x*x*x*a+x*x*b+x*c+d)<=0.001 then begin
      inc(s);
      write(x:0:2,' ');
    end;
    if s=3 then break;
  end;
end.
