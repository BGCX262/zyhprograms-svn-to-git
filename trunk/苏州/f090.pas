var st,s:ansistring;
  i,p1,p2,p3:longint;
function ss(i:longint):boolean;
begin
  if (st[i-1]<st[i+1])and(((st[i-1]in['0'..'9'])and(st[i+1]in['0'..'9']))or((st[i-1]in['a'..'z'])and(st[i+1]in['a'..'z']))or((st[i-1]in['A'..'Z'])and(st[i+1]in['A'..'Z']))) then exit(true)
  else exit(false);
end;
procedure asd(n:longint);
var tmp,t:ansistring;
  i,bj,j:longint;
begin
  tmp:='';
  t:='';
  if st[n-1]in['a'..'z'] then bj:=96
  else if st[n-1]in['A'..'Z'] then bj:=64
  else bj:=48;
  for i:=ord(st[n-1])-bj+1 to ord(st[n+1])-bj-1 do
    for j:=1 to p2 do tmp:=tmp+chr(i+bj);
  case p1 of
    1:for i:=1 to length(tmp) do
      if tmp[i] in['A'..'Z'] then tmp[i]:=chr(ord(tmp[i])-64+96);
    2:for i:=1 to length(tmp) do tmp[i]:=upcase(tmp[i]);
    3:for i:=1 to length(tmp) do tmp[i]:='*';
  end;
  i:=0;
  t:=tmp;
  if p3=2 then
    for i:=1 to length(tmp) do t[i]:=tmp[length(tmp)-i+1];
  write(t);
end;
begin
  readln(p1,p2,p3);
  readln(st);
  while i<length(st) do begin
    inc(i);
    if (st[i]<>'-') then write(st[i])
                  else if ss(i) then asd(i)
                    else write('-');
  end;
  writeln(s);
end.
