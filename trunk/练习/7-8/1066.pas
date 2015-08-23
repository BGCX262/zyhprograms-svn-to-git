const zm:array[1..26]of char=('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z');
var s,t,w,i,s1,j:longint;
    a,c:array[0..26]of char;
begin
  assign(input,'1066.in');reset(input);
  assign(output,'1066.out');rewrite(output);
  readln(s,t,w);
  for i:=1 to w do read(c[i]);
  a:=c;
  repeat
    i:=w+1;
    repeat
      dec(i);
    until ((a[i]>=zm[s])and(a[i]<zm[t]))or(i<=0);
    if i=0 then begin
    close(input);
    close(output);
    halt;
    end;
    a[i]:=succ(a[i]);
    for j:=i+1 to w do
    a[j]:=succ(a[j-1]);
    if a[w]<=zm[t] then
    begin
      for j:=1 to w do
      write(a[j]);
      writeln;
      s1:=s1+1;
    end;
  until s1>=5;
  close(input);close(output);
end.
