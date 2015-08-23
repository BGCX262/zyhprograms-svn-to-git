var
n,i,j,k,x,find,ans:integer;
a:array[1..4000]of integer;
begin
readln(n);
for i:=1 to n do
begin
read(x);
a[x]:=a[x]+1;
if a[x]=2then
begin
if find=0 then find:=x
else begin
fillchar(a,sizeof(a),0);
find:=0;
ans:=ans+1;
end;
end
else if a[x]=4 then
begin
find:=0;
ans:=ans+1;
fillchar(a,sizeof(a),0);
end;
end;
writeln(ans);
end.