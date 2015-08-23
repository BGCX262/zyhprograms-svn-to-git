var a:ansistring;s:array[1..1000]of string;
i,top:longint;
begin
readln(a);
for i:=1 to length(a) do
if (a[i]='+')or(a[i]='-') then begin
top:=top-1;
s[top]:='('+s[top]+a[i]+s[top+1]+')';
end
else begin
inc(top);
s[top]:=a[i];
end;
writeln(s[1]);
end.
