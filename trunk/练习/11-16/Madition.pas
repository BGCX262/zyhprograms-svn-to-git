var x,y:string;
  a,b,c:array[1..500]of longint;
  i,l,l1,l2,n:longint;
  x1:qword;
begin
  assign(input,'Madition.in');
  assign(output,'Madition.out');
  reset(input);
  rewrite(output);
  readln(n);
  readln(x);
  readln(y);
  l:=length(x);
  l1:=length(y);
  for i:=1 to l do if x[i]in['a'..'z'] then a[l-i+1]:=ord(x[i])-87
                                       else a[l-i+1]:=ord(x[i])-48;
  for i:=1 to l1 do if y[i]in['a'..'z'] then b[l1-i+1]:=ord(y[i])-87
                                        else b[l1-i+1]:=ord(y[i])-48;
  if l>l1 then l2:=l
           else l2:=l1;
  for i:=1 to l2 do begin
    x1:=a[i]+b[i]+x1;
    c[i]:=x1 mod n;
    x1:=x1 div n;
  end;
  while x1>0 do begin
    inc(l2);
    c[l2]:=x1 mod n;
    x1:=x1 div n;
  end;
  for i:=l2 downto 1 do
  if c[i]<10 then write(c[i])
             else write(chr(c[i]+87));
  close(input);
  close(output);
end.
