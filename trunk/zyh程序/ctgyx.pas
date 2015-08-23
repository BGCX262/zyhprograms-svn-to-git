var
i,a,b:byte;
s:ansistring;
begin
for i:=1 to 10 do
begin
readln(s);
a:=ord(s[pos(' ',s)-1])-48;
b:=ord(s[length(s)])-48;
a:=a mod 5; b:=b mod 5;
if (a=0) or (b=0) or (a=1) or (b=1) or (a=4) or (b=4)
then writeln('Matrix67')
else writeln('Shadow');
end;
end.