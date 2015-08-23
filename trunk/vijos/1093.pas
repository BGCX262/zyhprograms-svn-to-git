var i,n:longint;
  a,b,c:qword;
begin
  readln(n);
  a:=1;
  b:=1;
  i:=1;
  while i<n do begin
    c:=(a+b) mod 7654321;
    a:=b mod 7654321;
    b:=c mod 7654321;
    inc(i);
  end;
  writeln(a mod 7654321);
end.