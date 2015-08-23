var i,j,k,a,b,c:longint;
  f:array[0..20,0..20,0..20]of longint;
begin
  for i:=0 to 20 do
    for j:=0 to 20 do
      for k:=0 to 20 do
        if (i=0)or(j=0)or(k=0) then f[i,j,k]:=1
        else if (i<j)and(j<k) then f[i,j,k]:=f[i,j,k-1]+f[i,j-1,k-1]-f[i,j-1,k]
        else f[i,j,k]:=f[i-1,j,k]+f[i-1,j-1,k]+f[i-1,j,k-1]-f[i-1,j-1,k-1];
  readln(a,b,c);
  while not((a=-1)and(b=-1)and(c=-1)) do begin
    if (a<=0)or(b<=0)or(c<=0) then writeln('w(',a,', ',b,', ',c,') = ',1)
    else if (a>=20)or(b>=20)or(c>=20) then writeln('w(',a,', ',b,', ',c,') = ',f[20,20,20])
    else writeln('w(',a,', ',b,', ',c,') = ',f[a,b,c]);
    readln(a,b,c);
  end;
end.
