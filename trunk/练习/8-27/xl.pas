var 
k,n,s:longint; 
x:qword; 
begin 
readln(k,n); 
x:=1; 
s:=0; 
while n>0 do 
begin 
s:=s+n mod 2*x; 
x:=x*k; 
n:=n div 2; 
end; 
writeln(s); 
end.
