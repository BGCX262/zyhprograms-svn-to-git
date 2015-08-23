program ldkf;
var i,j,l:integer;
n:ansistring;
begin
readln(n);  l:=length(n);
n:=copy(n,l-1,2);
val(n,i,j);
if i mod 4=0 then writeln('0') else begin
if (i-3) mod 4=0 then writeln('0') else writeln('1'); end;
end. 
