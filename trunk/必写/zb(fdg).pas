var l,r,x:longint;
  ch:char;
begin
  l:=0;
  r:=10000;
  while true do begin
    x:=(l+r) div 2;
    writeln(x);
    readln(ch);
    if ((x=0)or(x=9999))and((ch<>'r')or(ch<>'R')) then begin
      writeln('Error');
      halt;
    end;
    case ch of
      's','S':l:=x;
      'b','B':r:=x;
      'r','R':halt;
    end;
  end;
end.