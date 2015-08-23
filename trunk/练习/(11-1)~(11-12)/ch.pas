var f1,f:boolean;
  a:array[1..1000,1..1000]of boolean;
  i,m,x,y,n:longint;
  b:array[1..1000]of boolean;
procedure asd(step:longint);
var j:longint;
begin
  for j:=1 to m do
    if (a[step,j])and(f)and(b[j]) then
      if (i=j) then begin
        writeln('T');
        f:=false;
        f1:=false;
      end
                else if (f)and(b[j]) then begin
                  b[j]:=false;
                  asd(j);
                end;
end;
begin
  readln(m,n);
  for i:=1 to n do begin
    readln(x,y);
    a[x,y]:=true;
  end;
  for i:=1 to m do begin
    fillchar(b,sizeof(b),true);
    f1:=true;
    f:=true;
    asd(i);
    if f1 then writeln('F');
  end;
end.
