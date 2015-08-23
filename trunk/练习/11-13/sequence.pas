var st:string;
  i,j,l,k,n:longint;
  s,sum:qword;
begin
  assign(input,'sequence.in');
  assign(output,'sequence.out');
  reset(input);
  rewrite(output);
  readln(k,n);
  while n>0 do begin
    st:=chr(n mod 2+48)+st;
    n:=n div 2;
  end;
  l:=length(st);
  for i:=l downto 1 do
    if st[i]='1' then begin
      s:=1;
      for j:=1 to l-i do s:=s*k;
      sum:=sum+s;
    end;
  writeln(sum);
  close(input);
  close(output);
end.
