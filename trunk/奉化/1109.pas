var st:string;ch,ch1:char;i:longint;t:boolean;
begin
  readln(st);
  while not(eoln) do
  begin
    read(ch);
    ch:=upcase(ch);
    if ch='D' then
    begin
      read(ch,ch);
      for i:=1 to length(st) do
      if st[i]=ch then
      break;
      if (i<length(st))or((i=length(st))and(st[i]=ch))then
      delete(st,i,1) else begin
      writeln('No such character!');
      halt;
      end;
      ch:=#0;
    end;
    if ch='I' then begin
    read(ch,ch,ch1,ch1);
    for i:=length(st) downto 1 do
    if st[i]=ch then break;
    if (i>1)or((i=1)and(st[i]=ch)) then
    insert(ch1,st,i)
    else begin
    writeln('No such character!');
    halt;
    end;
    ch:=#0;
    end;
    if ch='R' then   begin
    t:=false;
    read(ch,ch,ch1,ch1);
    for i:=1 to length(st) do
    if st[i]=ch then begin
    delete(st,i,1);
    insert(ch1,st,i);
    t:=true;
    end;
    if not(t) then begin
    writeln('No such character!');
    halt;
    end;
    end;
  end;
  writeln(st);
end.