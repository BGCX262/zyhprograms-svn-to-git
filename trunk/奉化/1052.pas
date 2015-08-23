var n,m,t:qword;
begin
readln(m);
n:=round(sqrt(2*m));
t:=m-n*(n-1) div 2;
if t>n then begin
inc(n);
t:=n-t;
end;
if (t mod n=1)or(t mod n=0) then write('1')
else write('0');
if t+1>n then begin
inc(n);
t:=n-(t+1);
end;
if ((t+1) mod n=1)or((t+1) mod n=0) then write('1')
else write('0');
if t>n then begin
inc(n);
t:=n-(t+2);
end;
if ((t+2) mod n=1)or((t+2) mod n=0) then write('1')
else write('0');
end.

