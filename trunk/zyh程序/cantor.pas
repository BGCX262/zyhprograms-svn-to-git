var n,k:longint;
begin
readln(n);
k:=1;
while n>k do
begin
n:=n-k;
inc(k);
end;
if k mod 2=0 then writeln(n,'/',k+1-n)
else writeln(k-n+1,'/',n);
end.
