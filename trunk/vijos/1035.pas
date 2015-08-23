type
  aa=record
    name:string;
    qian:longint;
  end;
var n,i,j,k,q,q1,m,j1:longint;
  name:string;
  a:array[1..10]of aa;
begin
  readln(n);
  for i:=1 to n do readln(a[i].name);
  for i:=1 to n do begin
    readln(name);
    for j:=1 to n do
      if name=a[j].name then break;
    readln(q,m);
    j1:=j;
    if m<>0 then begin
    q1:=q div m;
    a[j].qian:=a[j].qian+q-q1*m;
    for j:=1 to m do begin
      readln(name);
      for k:=1 to n do
        if name=a[k].name then break;
      a[k].qian:=a[k].qian+q1;
    end;
    end;
    a[j1].qian:=a[j1].qian-q;
  end;
  for i:=1 to n do writeln(a[i].name,' ',a[i].qian);
end.