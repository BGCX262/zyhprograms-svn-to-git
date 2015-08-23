var i:integer;
procedure s(l,r:integer);
var x:integer;ch:char;
begin
x:=(l+r)div 2;
writeln(x);
readln(ch);
case ch of
'r':begin HALT;end;
'g':begin i:=i+1;s(l,x); end;
'l':begin i:=i+1;s(x+1,r); end;
end;
end;
begin
i:=0;
s(1,1000);
end.
