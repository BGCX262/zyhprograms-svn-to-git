var
  i,k,n,len,r,tf,tl,x:longint;
  flag:boolean;
  long,father:array[0..10010] of integer;
begin
  readln(n);
  if n=1 then begin writeln(1,' ',1,' ',1); halt; end;
  fillchar(long,sizeof(long),0);
  fillchar(father,sizeof(father),0);
  long[0]:=0; long[1]:=1;
  father[1]:=0;
  r:=1; len:=1;
  while long[0]=0 do
  begin
    r:=r*10 mod n;
    inc(len);
    for i:=0 to n-1 do
      if (i=0)or(long[i]>0)and(long[i]<len) then
      begin
        k:=i+r;
        if k>=n then k:=k-n;
        if long[k]=0 then begin long[k]:=len; father[k]:=i; end;
      end;
  end;
  write(n,' ');
  k:=father[0]; tf:=k; tl:=len;
  father[0]:=-1; long[0]:=0; r:=0; flag:=true;
  while k>=0 do
  begin
    r:=r*10+1;
    if r div n>0 then begin write(r div n); flag:=false; end;
    if (r div n=0)and(not(flag)) then write(0);
    r:=r mod n;
    for i:=len-1 downto long[k]+1 do
    begin
      r:=r*10;
      if r div n>0 then begin write(r div n); flag:=false; end;
      if (r div n=0)and(not flag) then write(0);
      r:=r mod n;
    end;
    len:=long[k];
    k:=father[k];
  end;
  write(' ');
  k:=tf; len:=tl;
  father[0]:=-1; long[0]:=0;
  while k>=0 do
  begin
    write(1);
    for i:=len-1 downto long[k]+1 do write(0);
    len:=long[k];
    k:=father[k];
  end;
  writeln;
end.