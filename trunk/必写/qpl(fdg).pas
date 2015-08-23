var bo:boolean;
  i,j,n:longint;
  a:array[0..1000]of longint;
procedure pr;
var i:longint;
begin
  for i:=1 to n do write(a[i]);
  writeln;
end;
begin
  readln(n);
  for i:=0 to n do a[i]:=1;
  while a[0]=1 do begin
    bo:=true;
    for i:=1 to n-1 do
      for j:=i+1 to n do
        if a[i]=a[j] then begin
          bo:=false;
          break;
        end;
    if bo then pr;
    j:=n;
    while a[j]=n do dec(j);
    a[j]:=a[j]+1;
    for i:=j+1 to n do a[i]:=1;
  end;
end.