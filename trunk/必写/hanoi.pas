var n:longint;
procedure dg(n,a,b,c:longint);
begin
  if n=1 then writeln(a,'->',c)
         else begin
           dg(n-1,a,c,b);
           writeln(a,'->',c);
           dg(n-1,b,a,c)
         end;
end;
begin
  readln(n);
  dg(n,1,2,3);
end.
