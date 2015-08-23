function like(s1,s2:string):boolean;
var
a:set of char;
i:longint;
begin
if length(s1)<>length(s2) then exit(false);
a:=[];
for i:=1 to length(s1) do
a:=a+[s1[i]];
for i:=1 to length(s2) do
if not(s2[i] in a) then exit(false);
exit(true);
end;
var
i:longint;
n,c:longint;
s,s2:string;
begin
readln(n,c);
for i:=48 to c+48 do
s:=s+chr(i);
i:=0;
repeat
i:=i+1;
str(i*n,s2);
until (like(s2,s))or(i>100000);
if i<100000 then writeln(i) else writeln('No find!');
end.