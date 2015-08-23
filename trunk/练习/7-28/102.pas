var st:string;
i,l,fx,y,x:longint;
begin
readln(st);
for i:=1 to length(st) do
st[i]:=upcase(st[i]);
l:=pos('S',st);
fx:=0;
for i:=1 to l do begin
if st[i]='G' then
case fx of
0:x:=x+1;
1:y:=y+1;
2:x:=x-1;
3:y:=y-1;
end;
if st[i]='R' then begin
if fx=3 then fx:=0
else fx:=fx+1;
case fx of
0:x:=x+1;
1:y:=y+1;
2:x:=x-1;
3:y:=y-1;
end;
end;
if st[i]='L' then begin
if fx=0 then fx:=3
else fx:=fx-1;
case fx of
0:x:=x+1;
1:y:=y+1;
2:x:=x-1;
3:y:=y-1;
end;
end;
if st[i]='S' then begin
write('(',y,',',x,')');
case fx of
0:writeln(' N');
1:writeln(' E');
2:writeln(' S');
3:writeln(' W');
end;
break;
end;
end;
end.

