var
 c,i,m,n,y:integer;
begin
 readln(c);
 for i:=1 to c do
 begin
readln(y,m,n);
if(m=9)and(n=30)then writeln('YES')
  else if(m=11)and(n=30)then writeln('YES')
  else if not(odd(m+n))then writeln('YES')
  else writeln('NO');
 end;
end.