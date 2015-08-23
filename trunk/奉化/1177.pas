var n,j,i,s:longint;a:array[0..3]of integer;ch:char;
begin
  readln(n);
  inc(j,n mod 4);
  a[0]:=1;a[1]:=2;a[2]:=4;a[3]:=8;
  if j=0 then j:=4;
  for i:=1 to n do
  begin
    read(ch);
    dec(j);
    if ch='1' then s:=s+a[j];
    if j=0 then begin
    if s<10 then
    write(s) else write(chr(s+55));
    j:=4;
    s:=0;
    end;
  end;
end.