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
  1:write('一');
  2:write('二');
  3:write('三');
  4:write('四');
  5:write('五');
  6:write('六');
  7:write('七');
  8:write('八');
  9:write('九');
  end;
  write('个');
  case i of
  1:write('一');
  2:write('二');
  3:write('三');
  4:write('四');
  5:write('五');
  6:write('六');
  7:write('七');
  8:write('八');
  9:write('九');
  end;
  write(' ');
  end;
  writeln;
  for i:=1 to 9 do
  if a[i]<>0 then write(a[i],i);
  writeln;
  end.