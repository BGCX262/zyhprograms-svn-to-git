var st:string;
  ch:char;
  sum,sumx,n,i:longint;
begin
  readln(st);
  if st[1]='-' then st:='0'+st;
  if st[pos('=',st)+1]='-' then insert('0',st,pos('=',st)+1);
  for i:=1 to length(st) do
    if not((st[i]in['0'..'9'])or(st[i]='+')or(st[i]='-')or(st[i]='=')) then begin
      ch:=st[i];
      break;
    end;
  for i:=1 to length(st) do
    if (st[i]=ch)and(not(st[i-1]in['0'..'9'])) then insert('1',st,i);
  i:=0;
  while i<=pos('=',st) do begin
    inc(i);
    if (st[i]='+')or(st[i]='-')or(st[i]='=') then
      if pos(ch,copy(st,1,i-1))<>0 then
      begin
        val(copy(st,1,i-2),n);
        sumx:=sumx+n;
        delete(st,1,i-1);
        i:=1;
      end
      else begin
        val(copy(st,1,i-1),n);
        sum:=sum+n;
        delete(st,1,i-1);
        i:=1;
      end;
  end;
  i:=0;
  delete(st,1,1);
  sumx:=-sumx;
  st:=st+'+';
  while i<=length(st)-1 do begin
    inc(i);
    if (st[i]='+')or(st[i]='-') then
      if pos(ch,copy(st,1,i-1))<>0 then
      begin
        val(copy(st,1,i-2),n);
        sumx:=sumx+n;
        delete(st,1,i-1);
        i:=1;
      end
      else begin
        val(copy(st,1,i-1),n);
        sum:=sum-n;
        delete(st,1,i-1);
        i:=1;
      end;
  end;
  if sum/sumx=0 then writeln(ch,'=0.000')
  else writeln(ch,'=',sum/sumx:0:3);
end.
