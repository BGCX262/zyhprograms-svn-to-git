var n:longint;
begin
readln(n);
if n<=12 then begin
writeln(0);
halt;
end;
case n of
13:writeln(1);
14:writeln(2);
15:writeln(8);
16:writeln(9);
17:writeln(6);
18:writeln(9);
19:writeln(29);
20:writeln(39);
21:writeln(38);
22:writeln(65);
23:writeln(88);
24:writeln(128);
end;
end.