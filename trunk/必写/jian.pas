var s1,s2:string;
  w1,w2,w3,i:longint;
  a,b,c:array[1..500]of longint;
begin
  readln(s1);
  readln(s2);
  w1:=length(s1);
  w2:=length(s2);
  for i:=1 to w1 do a[w1-i+1]:=ord(s1[i])-48;
  for i:=1 to w2 do b[w2-i+1]:=ord(s2[i])-48;
  w3:=w1;
  for i:=1 to w3 do begin
    if a[i]<b[i] then begin
      c[i]:=a[i]+10-b[i];
      a[i+1]:=a[i+1]-1;
    end
    else c[i]:=a[i]-b[i];
  end;
  while (c[w3]=0)and(w3>1) do dec(w3);
  for i:=w3 downto 1 do write(c[i]);
end.