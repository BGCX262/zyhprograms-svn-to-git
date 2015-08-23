var s1:string;
  n,i,w1:longint;
  x,y:qword;
  a:array[1..1000]of longint;
begin
  readln(s1);
  readln(n);
  w1:=length(s1);
  for i:=1 to w1 do a[i]:=ord(s1[i])-48;
  s1:='';
  for i:=1 to w1 do begin
    y:=(x*10+a[i]) div n;
    x:=(x*10+a[i]) mod n;
    s1:=s1+chr(y+48);
  end;
  while (s1[1]='0')and(length(s1)>1) do delete(s1,1,1);
  writeln(s1,' ',x);
end.