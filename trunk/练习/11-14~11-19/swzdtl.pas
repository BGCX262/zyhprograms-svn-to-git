var m,s,t,i:longint;
  ms:array[1..2,0..300000] of longint;
  ts:array[0..300000] of longint;
begin
  readln(m,s,t);
  ms[2,0]:=m;
  for i:=1 to t do
  begin
    if ms[2,i-1]>=10 then
    begin
      ms[1,i]:=ms[1,i-1]+60;
      ms[2,i]:=ms[2,i-1]-10;
    end
                      else begin
                        ms[1,i]:=ms[1,i-1];
                        ms[2,i]:=ms[2,i-1]+4;
                      end;
    if ts[i-1]+17>ms[1,i] then ts[i]:=ts[i-1]+17 else ts[i]:=ms[1,i];
    if ts[i]>=s then
    begin
      writeln('Yes');
      writeln(i);
      halt;
    end;
  end;
  writeln('No');
  writeln(ts[t]);
end.