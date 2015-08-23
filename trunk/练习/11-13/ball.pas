var n,m,i,j:longint;
  f:array[0..30,0..30]of qword;
begin
  assign(input,'ball.in');
  assign(output,'ball.out');
  reset(input);
  rewrite(output);
  readln(n,m);
  f[0,1]:=1;
  for i:=1 to m do
    for j:=1 to n do
      if j=1 then f[i,j]:=f[i-1,2]+f[i-1,n]
             else if j=n then f[i,j]:=f[i-1,1]+f[i-1,j-1]
                         else f[i,j]:=f[i-1,j-1]+f[i-1,j+1];
  writeln(f[m,1]);
  close(input);
  close(output);
end.
