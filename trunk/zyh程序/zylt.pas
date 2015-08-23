var
h,s1,v,l,k,t1,t2,left,right:real;
n,res,i:longint;
procedure init;
begin
readln(h,s1,v,l,k,n);
res:=0;
end;
procedure doit;
begin
t1:=sqrt(2*(h-k)/10);
t2:=sqrt(2*(h)/10);
for i:=0 to n-1 do
begin
left:=(s1-i)/v;
right:=(s1+l-i)/v;
if (t1<=right-0.00001)and(t2>=left-0.00001)
then res:=res+1;
end;
end;
procedure outit;
begin
writeln(res);
end;
begin
init;
doit;
outit;
end.
