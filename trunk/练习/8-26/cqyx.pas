var
n,m,i,j,k1,k2   :longint;
ans:array[0..1,1..30]of longint;
begin
readln(n,m);
fillchar(ans,sizeof(ans),0);
ans[0,1]:=1;
for i:=1 to m do
begin
fillchar(ans[1],sizeof(ans[1]),0);
for j:=1 to n do
begin
if j=1 then k1:=n else k1:=j-1;
if j=n then k2:=1 else k2:=j+1;
ans[1,j]:=ans[0,k1]+ans[0,k2];
end;
ans[0]:=ans[1];
end;
writeln(ans[1,1]);
end.