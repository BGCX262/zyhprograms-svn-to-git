var s1,s2:string;
  w1,w2,w3,x,i:longint;
  a,b,c:array[1..1000]of longint;
begin
  readln(s1);
  readln(s2);
  w1:=length(s1);
  w2:=length(s2);
  for i:=1 to w1 do a[w1-i+1]:=ord(s1[i])-48;
  for i:=1 to w2 do b[w2-i+1]:=ord(s2[i])-48;
  if w1>w2 then w3:=w1
           else w3:=w2;
  for i:=1 to w3 do begin
    x:=x+a[i]+b[i];
    c[i]:=c[i]+x mod 10;
    x:=x div 10;
  end;
  while x>0 do begin
    inc(w3);
    c[w3]:=x mod 10;
    x:=x div 10;
  end;
  for i:=w3 downto 1 do write(c[i]);
end.


