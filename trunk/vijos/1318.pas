var c,a,zm:array[1..26]of char;
  s,t,w,i,j,s1:longint;
begin
  readln(s,t,w);
  for i:=1 to 26 do zm[i]:=chr(96+i);
  for i:=1 to w do read(a[i]);
  c:=a;
  repeat
    i:=w+1;
    repeat
      dec(i);
    until (zm[s]<=c[i])and(zm[t]>=c[i])or(i=0);
    if i=0 then halt;
    c[i]:=succ(c[i]);
    for j:=i+1 to w do c[j]:=succ(c[j-1]);
    if c[w]<=zm[t] then begin
      for j:=1 to w do write(c[j]);
      writeln;
      inc(s1);
    end;
  until s1=5;
end.