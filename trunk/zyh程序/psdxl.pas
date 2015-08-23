var i,j,k,t,max,n:longint;
s1,s,s2:array[1..351]of char;
begin
readln(n);
for i:=1 to n do read(s[i]);
for i:=1 to n do begin
t:=0;
for j:=i to n do begin
inc(t);
s1[t]:=s[j];
end;
for j:=n downto i+1 do begin
inc(t);
s1[t]:=s[j];
end;
t:=0;
for j:=i+1 to n do begin
inc(t);
s2[t]:=s[j];
end;
for j:=1 to i do
begin
inc(t);
s2[t]:=s[j];
end;
t:=1;
for j:=2 to n do
if (s1[j]=s1[j-1])or(s1[j]='w')or(s1[j-1]='w') then t:=t+1
else break;
if t<>n then begin
inc(t);
for j:=2 to n do if (s2[j]=s2[j-1])or(s2[j]='w')or(s2[j-1]='w') then t:=t+1
else break;
if t>max then max:=t;
end
else
max:=t;
end;
if max>n then writeln(n)
else writeln(max);
end.

