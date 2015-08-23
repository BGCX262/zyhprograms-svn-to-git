var n:longint;
y,l:real;
sh,ch:char;
begin
readln(n);
readln(ch);
readln(sh);
case ch of
'a':y:=1.5;
'b':y:=1.35;
'c':y:=1.18;
end;
case sh of
'm':l:=0.95;
'f':l:=1;
'e':l:=0.9;
end;
writeln(n*y*l:0:5);
end.

