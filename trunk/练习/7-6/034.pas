var s,s1,s2,s3:string;
l,l1,l2:integer;
begin
readln(s);
readln(s1);
l:=length(s);
s2:=s;
while ((pos(s2,s1)=0)and(length(s2)>0)) do
delete(s2,1,1);
l1:=length(s2);
l2:=length(s);
s3:=s;
while ((pos(s3,s1)=0)and(l2>0)) do begin
delete(s3,l2,1);
l2:=length(s3);
end;
if l1>l2 then write(s2)
else write(s3);
end.
