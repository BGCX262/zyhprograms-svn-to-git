var n,i,j,b:longint;
f:boolean;
begin
  while true do begin
    readln(n);
    if n=0 then break;
    f:=false;
    for i:=2 to trunc(sqrt(n)) do
      if n mod i=0 then begin
        b:=n div i;
        f:=true;
        for j:=2 to trunc(sqrt(b)) do
          if b mod j=0 then begin
            f:=false;
            break;
          end;
      end;
    if f then writeln('YES')
    else writeln('NO');
  end;
end.