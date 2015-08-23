var n,m,k,i,t:longint;
begin
 readln(n,k);
 repeat
   inc(m);t:=1;
   for i:=2 to n do begin
     t:=(t+m)mod i;
     if t=0 then t:=i;
   end;
 until t=k;
 writeln(m);
end.