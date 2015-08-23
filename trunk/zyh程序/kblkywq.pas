Program P1024;
var
i,j:longint;
a,b,l:int64;
s:string;
r:array[0..10000]of qword;
procedure swap(x,y:integer);
var
t:char;
begin
t:=s[x];
s[x]:=s[y];
s[y]:=t;
end;
function correct:boolean;
var
i,j:longint;
begin
for i:=1 to r[0]-1 do if r[i]=r[r[0]] then 
begin
for j:=i to r[0]-1 do write(r[j],' ');
writeln;
exit(true);
end;
exit(false);
end;
begin
repeat
readln(s);
l:=length(s);
r[0]:=1;
val(s,r[1]);
repeat
for i:=l downto 1 do for j:=1 to i do if s[i]>s[j] then swap(i,j);
val(s,a);
for i:=l downto 1 do for j:=1 to i do if s[i]<s[j] then swap(i,j);
val(s,b);
inc(r[0]);
r[r[0]]:=a-b;
str(a-b,s);
until correct;
until eof;
end.
