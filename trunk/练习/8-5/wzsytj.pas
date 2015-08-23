var
  a:packed array[1..20,1..20]of integer;
  b:packed array[1..20]of integer;
  total,n,k,i,j:longint;
procedure s(step:integer);
var
  i:longint;
  t:boolean;
begin
  if step>n then inc(total)
  else begin
    if a[1,step]=1 then begin
      b[step]:=1;
      t:=true;
      for i:=2 to k do
        if a[i,step]=-1 then begin
          t:=false;break;
        end;
      if t then s(step+1);
    end;
    if a[1,step]=-1 then begin
      b[step]:=-1;
      t:=true;
      for i:=2 to k do
        if a[i,step]=1 then begin
          t:=false;break;
        end;
      if t then s(step+1);
    end;
    if a[1,step]=0 then begin
      b[step]:=1;
      t:=true;
      for i:=2 to k do
        if a[i,step]=-1 then begin
          t:=false;break;
        end;
      if t then s(step+1);
      b[step]:=0;
      t:=true;
      for i:=2 to k do
        if a[i,step]=1 then begin
          t:=false;break;
        end;
      if t then s(step+1);
    end;
  end;
end;
begin
  readln(n,k);
  for i:=1 to k do
    for j:=1 to n do
      read(a[i,j]);
  if (n>0)and(k>0) then s(1);
  writeln('total=',total);
end.