var a:array[1..10000]of longint;
  l,i:longint;
  n:string;
procedure chu;
var s:string;
  x,y:qword;
begin
  s:='';
  x:=0;
  y:=0;
  for i:=l downto 1 do begin
    y:=(x*10+a[i])div 2;
    x:=(x*10+a[i])mod 2;
    s:=s+chr(y+48);
  end;
  while (s[1]='0')and(length(s)>1) do delete(s,1,1);
  l:=length(s);
  for i:=1 to l do a[i]:=ord(s[l-i+1])-48;
end;
procedure dj;
var x,i:longint;
begin
  x:=0;
  for i:=1 to l do begin
    a[i]:=a[i]*3+x;
    x:=a[i] div 10;
    a[i]:=a[i] mod 10;
  end;
  while x>0 do begin
    inc(l);
    a[l]:=x mod 10;
    x:=x div 10;
  end;
end;
begin
  readln(n);
  if n='1' then begin
    writeln('1 4 2 1');
    halt;
  end;
  l:=length(n);
  for i:=1 to l do a[i]:=ord(n[l-i+1])-48;
  while not((l=1)and(a[1]=1)) do begin
    for i:=l downto 1 do write(a[i]);
    write(' ');
    if a[1] mod 2=0 then chu
                    else begin
                      dj;
                      a[1]:=a[1]+1;
                      i:=1;
                      while a[i]>=10 do begin
                        a[i]:=a[i] mod 10;
                        a[i+1]:=a[i+1]+1;
                        inc(i);
                      end;
                    end;
  end;
  write('1');
end.
