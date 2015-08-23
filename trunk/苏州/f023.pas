var f:array[1..10000,1..2,1..2]of longint;
  a,n,m,x,i,y:longint;
begin
  readln(a,n,m,x);
  f[1,1,1]:=1;
  f[1,1,2]:=0;
  f[1,2,1]:=1;
  f[1,2,2]:=0;
  f[2,1,1]:=1;
  f[2,1,2]:=0;
  f[2,2,1]:=0;
  f[2,2,2]:=1;
  for i:=3 to n do begin
    f[i,1,1]:=f[i-1,1,1]+f[i-2,2,1];
    f[i,1,2]:=f[i-1,1,2]+f[i-2,2,2];
    f[i,2,1]:=f[i-1,2,1]+f[i-2,2,1];
    f[i,2,2]:=f[i-1,2,2]+f[i-2,2,2];
  end;
  y:=(m-a*f[n-1,1,1]) div f[n-1,1,2];
  writeln(f[x,1,1]*a+f[x,1,2]*y);
end.