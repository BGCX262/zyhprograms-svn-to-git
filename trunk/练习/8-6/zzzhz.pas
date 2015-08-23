const k:array[1..6]of integer=(0,1,1,2,2,3);
type stack=array[1..1000]of char;
var a,s:stack;i,j,j2:longint;st:string;ch:char;
function t(p1:char):integer;
var x:longint;
begin
  case p1 of
  '(':x:=1;
  '+':x:=2;
  '-':x:=3;
  '*':x:=4;
  '/':x:=5;
  ')':x:=6;
  end;
  t:=k[x];
end;
begin
  readln(st);i:=1;
  while i<=length(st) do
  begin
    if st[i] in ['0'..'9'] then
    begin
    while st[i] in ['0'..'9'] do
    begin
      inc(j);
      a[j]:=st[i];
      inc(i);
    end;
    inc(j);
    a[j]:=' ';
    end;
    case st[i] of
    '+','-','*','/':if j2>0 then
    begin
      ch:=s[j2];
      while (t(ch)>=t(st[i]))and(j2>0) do
      begin
        inc(j);
        a[j]:=ch;
        inc(j);
        a[j]:=' ';
        dec(j2);
        if j2>0 then
        ch:=s[j2]
        else break;
      end;
      inc(j2);
      s[j2]:=st[i];
      inc(i);
    end else begin
    inc(j2);
    s[j2]:=st[i];
    inc(i);
    end;
    '(':begin
    inc(j2);
    s[j2]:='(';
    inc(i);
    end;
    ')':begin
     while(s[j2]<>'(') do
     begin
       inc(j);
       a[j]:=s[j2];
       inc(j);
       a[j]:=' ';
       dec(j2);
     end;
     dec(j2);
     inc(i);
     end;
    end;
    end;
  while j2<>0 do
  begin
    inc(j);
    a[j]:=s[j2];
    inc(j);
    a[j]:=' ';
    dec(j2);
  end;
  while a[j]=' ' do dec(j);
  for i:=1 to j do
  write(a[i]);
end.
