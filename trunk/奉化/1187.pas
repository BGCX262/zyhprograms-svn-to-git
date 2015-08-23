var
  n,b,i,j:longint;
  e:boolean;
begin
  while true do
  begin
    readln(n);
    if n=0 then break;
    e:=false;
    for i:=2 to trunc(sqrt(n)) do
    if n mod i=0 then
    begin
      b:=n div i;
      e:=true;
      for j:=2 to trunc(sqrt(b)) do
      if b mod j=0 then
      begin
        e:=false;
        break;
      end;
      break;
    end;
    if e then writeln('Yes')
         else writeln('No');
  end;
end.