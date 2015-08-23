var a:array[1..7,1..2]of longint;
  bo:boolean;
  max,i,m:longint;
begin
  for i:=1 to 7 do readln(a[i,1],a[i,2]);
  bo:=true;
  for i:=1 to 7 do
    if a[i,1]+a[i,2]>8 then bo:=false;
  if bo then begin
    writeln(0);
    exit;
  end;
  for i:=1 to 7 do
    if a[i,1]+a[i,2]>max then begin
      max:=a[i,1]+a[i,2];
      m:=i;
    end;
  writeln(m);
end.