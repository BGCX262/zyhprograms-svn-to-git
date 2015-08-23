var money,qian,i,sx:longint;
  a:array[1..12]of longint;
begin
  for i:=1 to 12 do readln(a[i]);
  for i:=1 to 12 do begin
    money:=300+sx;
    if money-a[i]<0 then begin
      writeln(-i);
      exit;
    end;
    sx:=money-a[i];
    qian:=sx div 100*100+qian;
    sx:=sx mod 100;
  end;
  writeln(qian*1.2+sx:0:0);
end.