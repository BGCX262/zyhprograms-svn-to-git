procedure zb(l,r:longint);
var x:longint;
  ch:char;
begin
  x:=(l+r)div 2;
  writeln(x);
  readln(ch);
  if ((x=0)or(x=9999))and((ch<>'r')or(ch<>'R')) then begin
    writeln('Error');
    halt;
  end;
  case ch of
    's','S':zb(x,r);
    'b','B':zb(l,x);
    'r','R':halt;
  end;
end;
begin
  zb(0,10000);
end.
