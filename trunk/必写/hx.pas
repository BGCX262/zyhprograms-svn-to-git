var s1,s2:string;
procedure asd(s1,s2:string);
var k:longint;
begin
  if (s1<>'')and(s2<>'') then begin
    k:=pos(s1[1],s2);
    asd(copy(s1,2,k),copy(s2,1,k-1));
    asd(copy(s1,k+1,length(s1)-1),copy(s2,k+1,length(s2)-k));
    write(s1[1]);
  end;
end;
begin
  readln(s1);
  readln(s2);
  asd(s1,s2);
end.
