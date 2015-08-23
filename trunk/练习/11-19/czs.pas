var x,y,z,k:qword;
  s:string;
begin
  x:=7;
  y:=7;
  s:='7';
  while length(s)<>22 do begin
    z:=x*y+k;
    s:=chr(z mod 10+48)+s;
    y:=z mod 10;
    k:=z div 10;
  end;
  writeln(s);
end.