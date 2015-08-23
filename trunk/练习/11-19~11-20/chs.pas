var n:string;
  k,i,j,a,b,s:longint;
  sum:extended;
  f:array[0..9,0..9]of boolean;
begin
  readln(n);
  val(copy(n,pos(' ',n)+1,length(n)-pos(' ',n)),k);
  delete(n,pos(' ',n),length(n)-pos(' ',n)+1);
  for i:=1 to k do begin
    readln(a,b);
    f[a,a]:=true;
    f[a,b]:=true;
  end;
  for k:=0 to 9 do
    for i:=0 to 9 do
      if i<>k then
        for j:=0 to 9 do
          if (k<>j)and(i<>j) then
            f[i,j]:=f[i,j]or(f[i,k]and f[k,j]);
  sum:=1;
  for i:=1 to length(n) do begin
    s:=0;
    for j:=0 to 9 do
      if f[ord(n[i])-48,j] then inc(s);
    if s<>0 then sum:=sum*s;
  end;
  writeln(sum:0:0);
end.
