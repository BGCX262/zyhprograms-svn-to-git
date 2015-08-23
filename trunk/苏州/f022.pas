var n:longint;
procedure asd(n:longint);
var i,p:longint;
  first:boolean;
  b:array[0..14]of longint;
begin
  p:=-1;
  if n=0 then write(0)
  else begin
    first:=true;
    while n>0 do begin
      inc(p);
      b[p]:=n mod 2;
      n:=n div 2;
    end;
    for i:=p downto 0 do
      if b[i]=1 then begin
        if first then first:=false
        else write('+');
        if i=1 then write(2)
        else begin
          write('2(');
          asd(i);
          write(')');
        end;
      end;
  end;
end;
begin
  readln(n);
  asd(n);
end.