var n,m,k,i,j,i1,j1,max,ni,nj,tot,l,sum:longint;
  a:array[1..20,1..20]of longint;
begin
  readln(n,m,k);
  for i:=1 to n do
    for j:=1 to m do begin
      read(a[i,j]);
      if a[i,j]>0 then inc(tot);
    end;
  while tot>0 do begin
    max:=0;
    for i:=1 to n do
      for j:=1 to m do
        if max<a[i,j] then begin
          max:=a[i,j];
          i1:=i;
          j1:=j;
        end;
    a[i1,j1]:=0;
    if (ni=0)and(nj=0) then nj:=j1;
    l:=abs(ni-i1)+abs(nj-j1)+1;
    if k>l then begin
      sum:=sum+max;
      k:=k-l;
      ni:=i1;
      nj:=j1;
    end
    else begin
      writeln(sum);
      exit;
    end;
    if k<ni then begin
      writeln(sum-max);
      exit;
    end;
    tot:=tot-1;
  end;
  writeln(sum);
end.