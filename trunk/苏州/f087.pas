var mf:array[1..2,0..300000]of longint;
  zl:array[0..300000]of longint;
  m,t,s,i:longint;
begin
  readln(m,s,t);
  mf[2,0]:=m;
  for i:=1 to t do begin
    if mf[2,i-1]>=10 then begin
      mf[1,i]:=mf[1,i-1]+60;
      mf[2,i]:=mf[2,i-1]-10;
    end
    else begin
      mf[2,i]:=mf[2,i-1]+4;
      mf[1,i]:=mf[1,i-1];
    end;
    zl[i]:=zl[i-1]+17;
    if zl[i]<mf[1,i] then zl[i]:=mf[1,i];
    if zl[i]>=s then begin
      writeln('Yes');
      writeln(i);
      halt;
    end;
  end;
  writeln('No');
  writeln(zl[t]);
end.