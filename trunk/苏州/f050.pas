var a:array[1..1000,1..2]of string;
  s1,s2:string;
  n,i:longint;
function max(x,y:longint):longint;
begin
  if x>y then max:=x
  else max:=y;
end;
procedure change(answer:longint;st:string;step,s:longint);
var i,j:longint;
begin
  if st=s2 then begin
    writeln(step-1);
    halt;
  end;
  if step=answer+1 then exit;
  for i:=1 to n do
    for j:=max(1,s-length(a[i,1])+1) to length(st) do
      if a[i,1]=copy(st,j,length(a[i,1])) then change(answer,copy(st,1,j-1)+a[i,2]+copy(st,j+length(a[i,1]),length(st)-length(a[i,1])-j+1),step+1,j);
end;
begin
  readln(s1);
  s2:=copy(s1,pos(' ',s1)+1,length(s1)-pos(' ',s1));
  delete(s1,pos(' ',s1),length(s1)-pos(' ',s1)+1);
  while not eof do begin
    inc(n);
    readln(a[n,1]);
    a[n,2]:=copy(a[n,1],pos(' ',a[n,1])+1,length(a[n,1])-pos(' ',a[n,1]));
    delete(a[n,1],pos(' ',a[n,1]),length(a[n,1])-pos(' ',a[n,1])+1);
  end;
  for i:=1 to 10 do change(i,s1,1,1);
  writeln('NO ANSWER!');
end.