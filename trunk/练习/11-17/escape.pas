var ms:array[0..300000,1..2]of longint;
  t1,n,i,s,m:longint;
  t:array[0..300000]of longint;
begin
  readln(m,s,t1);
  ms[0,2]:=m;
  for i:=1 to t1 do
  begin
    if ms[i-1,2]>=10 then begin
      ms[i,1]:=ms[i-1,1]+60;
      ms[i,2]:=ms[i-1,2]-10;
    end
                     else begin
                       ms[i,1]:=ms[i-1,1];
                       ms[i,2]:=ms[i-1,2]+4;
                     end;
    t[i]:=t[i-1]+17;
    if t[i]<ms[i,1] then t[i]:=ms[i,1];
    if t[i]>=s then begin
      writeln('Yes');
      writeln(i);
      halt;
    end;
  end;
  writeln('No');
  writeln(t[t1]);
end.
