VAR ch:char;
r,j:longint;
BEGIN
readln(ch);
randomize;
j:=random(3);
case ch of
'S':R:=0;
'R':R:=1;
'P':R:=2;
END;
if ((r=0)and(j=2))or((r=1)and(j=0))or((r=2)and(j=1)) then writeln('YOU WIN')
ELSE if r=j then writeln('NI PING')
ELSE writeln('YOU LOSE');
readln;
end.