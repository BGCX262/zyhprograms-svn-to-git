var
  bol:boolean;
  a,b,n,sum,len,len2,len3:longint;
  f:array[1..10000] of longint;
  bo:array[0..6,0..6] of longint;
begin
  a:=1;
  b:=1;
  n:=1;
  while (not eof) and (a<>0) and (b<>0) and (n<>0) do
  begin
    read(a,b,n);
    if (a<>0) and (b<>0) and (n<>0) then
    begin
    fillchar(bo,sizeof(bo),0);
    f[1]:=1;
    f[2]:=1;
    bo[1,1]:=1;
    sum:=2;
    repeat
      bol:=false;
      inc(sum);
      f[sum]:=(a*f[sum-1]+b*f[sum-2]) mod 7;
      if bo[f[sum],f[sum-1]]>0 then bol:=true
      else bo[f[sum],f[sum-1]]:=sum-1;
    until (sum>=n) or bol;
    if sum>=n then writeln(f[n])
    else
    begin
      len:=sum-bo[f[sum],f[sum-1]]-1;
      len2:=n-bo[f[sum],f[sum-1]]+1;
      if len2 mod len=0 then writeln(f[sum-2])
      else
      begin
        len3:=bo[f[sum],f[sum-1]]+len2 mod len;
        writeln(f[len3-1]);
      end;
    end;
  end;
  end;
end.