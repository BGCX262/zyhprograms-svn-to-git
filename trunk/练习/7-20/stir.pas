var n,m:longint;
function s(n,m:longint):longint;
begin
  if m>n then s:=0
  else if (m=0)and(n<>0) then s:=0
  else if (n=0)and(m=0)then s:=1
  else s:=m*s(n-1,m)+s(n-1,m-1);
end;
begin
  assign(input,'stir.in');reset(input);
  assign(output,'stir.out');rewrite(output);
  readln(n,m);
  writeln(s(n,m));
  close(input);close(output);
end.
