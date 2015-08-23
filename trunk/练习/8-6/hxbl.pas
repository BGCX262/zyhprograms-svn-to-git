var s1,s2:string;
post:string;
procedure Solve(pre,mid:string);
var i:integer;
begin
if (pre='')or(mid='') then exit;
i:=pos(pre[1],mid);
solve(copy(pre,2,i),copy(mid,1,i-1));
solve(copy(pre,i+1,length(pre)-i),copy(mid,i+1,length(mid)-i));
post:=post+pre[1];
end;
begin
readln(s1);
readln(s2);
solve(s1,s2);
writeln(post);
end.
