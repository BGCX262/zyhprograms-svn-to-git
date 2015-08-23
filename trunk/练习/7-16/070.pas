var i,j,n:longint;
begin
readln(n);
for i:=1 to n do
begin
for j:=1 to n-i do write(' ');
for j:=1 to i do write(j);
for j:=i-1 downto 1 do write(j);
writeln;
end;
for i:=n-1 downto 1 do begin
for j:=1 to n-i do write(' ');
for j:=1 to i do write(j);
for j:=i-1 downto 1 do write(j);
writeln;
end;
end.
