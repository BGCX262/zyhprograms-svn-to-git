var s1,s2:string;
procedure asd(s1,s2:string);
var l,k:longint;
begin
  if s1<>'' then begin
    l:=length(s2);
    k:=pos(s2[l],s1);
    if k>0 then write(s1[k]);
    asd(copy(s1,1,k-1),copy(s2,1,k-1));
    asd(copy(s1,k+1,length(s1)-k),copy(s2,k,length(s1)-k));
  end;
end;
begin
  readln(s1);
  readln(s2);
  asd(s1,s2);
end.
