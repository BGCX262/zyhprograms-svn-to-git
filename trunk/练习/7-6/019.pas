var l,i,n:integer;
s:string;
begin
readln(s);
readln(n);
l:=length(s);
i:=1;
while n<>0 do begin
if s[i]>s[i+1] then begin
delete(s,i,1);n:=n-1;i:=1;end else i:=i+1;
if i=length(s) then begin delete(s,i,1);n:=n-1;i:=1;end;
end;
while (s[1]='0')and(length(s)<>1) do delete(s,1,1);
writeln(s);
end.
