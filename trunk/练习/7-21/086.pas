 var  st:string;
 a:array[1..9]of longint;
 i:longint;
 begin
 readln(st);
 for i:=1 to length(st) do
 inc(a[ord(st[i])-48]);
 for i:=1 to 9 do
  if a[i]<>0 then begin
  case a[i] of
  1:write('һ');
  2:write('��');
  3:write('��');
  4:write('��');
  5:write('��');
  6:write('��');
  7:write('��');
  8:write('��');
  9:write('��');
  end;
  write('��');
  case i of
  1:write('һ');
  2:write('��');
  3:write('��');
  4:write('��');
  5:write('��');
  6:write('��');
  7:write('��');
  8:write('��');
  9:write('��');
  end;
  write(' ');
  end;
  writeln;
  for i:=1 to 9 do
  if a[i]<>0 then write(a[i],i);
  writeln;
  end.