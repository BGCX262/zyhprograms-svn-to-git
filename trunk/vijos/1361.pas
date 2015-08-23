var n,s,sum:qword;
begin
  readln(n);
  if n=1 then writeln(0)
  else begin
    s:=3;
    while n>s do begin
      s:=s*3;
      inc(sum);
    end;
    writeln(sum+1);
  end;
end.