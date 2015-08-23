var s1,s2:ansistring;
  w1,w2,w3,i,j,x:longint;
  a,c,b:array[1..10000]of longint;
begin
  readln(s1);
  readln(s2);
  w1:=length(s1);
  w2:=length(s2);
  for i:=1 to w1 do a[w1-i+1]:=ord(s1[i])-48;
  for i:=1 to w2 do b[w2-i+1]:=ord(s2[i])-48;
  for i:=1 to w1 do
  for j:=1 to w2 do
  begin
    c[i+j-1]:=c[i+j-1]+a[i]*b[j];
    c[i+j]:=c[i+j]+c[i+j-1] div 10;
    c[i+j-1]:=c[i+j-1] mod 10;
  end;
  w3:=w1+w2;
  while (c[w3]=0)and(w3>1) do dec(w3);
  for i:=w3 downto 1 do write(c[i]);
end.