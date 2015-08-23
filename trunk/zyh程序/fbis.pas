var
n:integer;
s:ansistring;
procedure print(i,j,n:integer);
var
m:integer;
t:ansistring;
begin
if n>=1 then
begin
m:=(j-i+1) shr 1+i-1;
print(i,m,n-1);
print(m+1,j,n-1);
end;
t:=copy(s,i,j-i+1);
if pos('0',t)=0
then write('I')
else
if pos('1',t)=0
then write('B')
else write('F');
end;
begin
readln(n);
readln(s);
print(1,length(s),n);
writeln;
end.

