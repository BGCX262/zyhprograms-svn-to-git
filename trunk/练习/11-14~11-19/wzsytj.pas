var n,k,i,j,ans:longint;
  a:array[1..20,1..20]of longint;
  b:array[1..20]of longint;
function ss:boolean;
var i,j:longint;
  f:boolean;
begin
  for i:=1 to n do
  begin
    f:=true;
    for j:=1 to k do begin
      if (a[j,i]=1)and(b[i]=0) then begin
        f:=false;
        break;
      end;
      if (a[j,i]=-1)and(b[i]=1) then begin
        f:=false;
        break;
      end;
    end;
    if not f then exit(false);
  end;
  exit(true);
end;
procedure asd(step:longint);
var i:longint;
begin
  if step=n+1 then begin
    if ss then inc(ans);
    exit;
  end;
  for i:=0 to 1 do begin
    b[step]:=i;
    asd(step+1);
  end;
end;
begin
  readln(n,k);
  for i:=1 to k do
    for j:=1 to n do read(a[i,j]);
  asd(1);
  writeln('total=',ans);
end.