var a,c:array[1..4]of longint;
  b:array[1..4]of boolean;
  ch:char;
  n,s:longint;
procedure as(step:longint;sum:real);
var i:longint;
begin
  if step=4 then begin
    if sum=24 then begin
      writeln(1);
      halt;
    end;
    exit;
  end;
  as(step+1,sum*c[step+1]);
  as(step+1,sum-c[step+1]);
  as(step+1,sum+c[step+1]);
  if c[step+1]<>0 then as(step+1,sum/c[step+1]);
  if sum<>0 then as(step+1,c[step+1]/sum);
  as(step+1,c[step+1]-sum);
end;
procedure asd(step:longint);
var i:longint;
begin
  if step=5 then begin
    as(1,c[1]);
    exit;
  end;
  for i:=1 to 4 do
    if b[i] then begin
      c[step]:=a[i];
      b[i]:=false;
      asd(step+1);
      b[i]:=true;
    end;
end;
begin
  while not eoln do begin
    read(ch);
    if ch=' ' then begin
      inc(n);
      a[n]:=s;
      s:=0;
    end
    else
      if ch in  ['0'..'9'] then s:=s*10+ord(ch)-48
      else case ch of
        'A':s:=s*10+1;
        'J':s:=s*10+11;
        'Q':s:=s*10+12;
        'K':s:=s*10+13;
      end;
  end;
  a[4]:=s;
  fillchar(b,sizeof(b),true);
  asd(1);
  writeln(0);
end.