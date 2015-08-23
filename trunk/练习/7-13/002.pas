var n,i,s,m,k,s1:longint;st:string;
begin
  readln(n);
  i:=0;
  s:=0;
  while s<n do
  begin
    inc(i);
    s:=s+i;
  end;
  if s<>n then m:=i-1;s1:=0;k:=i;
  for i:=1 to m do
  if i=1 then s1:=s1+2
  else if (i<>m)or(s<>n) then s1:=(s1+6+(s1-2)*4)mod 70207
  else if s=n then s1:=(s1+i)mod 70207;
  if s<>n then
  s1:=(s1+n-(s-k))mod 70207;
  str(s1,st);
  if length(st)=5 then
  if s<>n then
  writeln(s1)
  else writeln(s1)
  else begin
  for i:=1 to 5-length(st) do
  st:='0'+st;
  writeln(st);
end;
end.

end.