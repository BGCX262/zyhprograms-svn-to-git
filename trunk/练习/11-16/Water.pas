var s:string;
  n,k,m,i,j,l,x,w:longint;
  s1,sum:qword;
begin
  assign(input,'Water.in');
  assign(output,'Water.out');
  reset(input);
  rewrite(output);
  readln(n,k);
  m:=n;
  while n>0 do begin
    s:=s+chr(n mod 2+48);
    n:=n div 2;
  end;
  l:=length(s);
  for i:=l downto 1 do
  begin
    if s[i]='1' then inc(w);
    if w=k then begin
      j:=i;
      break;
    end;
  end;
  for i:=1 to j-1 do s[i]:='0';
  x:=1;
  while (j<=l)and(x=1) do begin
    if s[j]='1' then s[j]:='0'
                else if s[j]='0' then begin
                  x:=0;
                  s[j]:='1';
                end;
    inc(j);
  end;
  if x=1 then begin
    inc(l);
    s:=s+'1';
  end;
  for i:=1 to l do
    if s[i]='1' then begin
      s1:=1;
      for j:=1 to i-1 do s1:=s1*2;
      sum:=sum+s1;
    end;
  writeln(sum-m);
  close(input);
  close(output);
end.
