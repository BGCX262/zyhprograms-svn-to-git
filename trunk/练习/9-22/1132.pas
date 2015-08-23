var s1,s2:string;
procedure asd(s1,s2:string);
var k:longint;
begin
if length(s2)=1 then write(s2)
else begin
k:=pos(s2[length(s2)],s1);
WRITE(S1[k]);
if k>1 then
asd(copy(s1,1,k-1),copy(s2,1,k-1));
if k<length(s1) then
asd(copy(s1,k+1,length(s1)-k),copy(s2,k,length(s2)-k));
end;
end;
begin
readln(s1);
readln(s2);
asd(s1,s2);
end.
