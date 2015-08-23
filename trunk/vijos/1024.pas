var x,y,n:qword;
  i,j,k,t,w,i1:longint;
  bo:boolean;
  b:array[1..100]of qword;
  a:array[1..10]of longint;
begin
  while not eof do begin
    readln(n);
    fillchar(b,sizeof(b),0);
    k:=1;
    b[k]:=n;
    repeat
      w:=0;
      while n>0 do begin
        inc(w);
        a[w]:=n mod 10;
        n:=n div 10;
      end;
      for i:=1 to w-1 do
        for j:=i+1 to w do
          if a[i]>a[j] then begin
            t:=a[i];
            a[i]:=a[j];
            a[j]:=t;
          end;
      x:=0;
      y:=0;
      for i:=1 to w do x:=x*10+a[i];
      for i:=w downto 1 do y:=y*10+a[i];
      n:=y-x;
      k:=k+1;
      b[k]:=n;
      bo:=false;
      i1:=0;
      for i:=k-1 downto 1 do
        if n=b[i] then begin
          i1:=i;
          bo:=true;
          break;
        end;
      if i1<>0 then begin
        for j:=i1 to k-1 do write(b[j],' ');
        writeln;
      end;
    until bo;
  end;
end.

