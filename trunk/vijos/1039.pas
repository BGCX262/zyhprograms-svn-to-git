var a,b,c:array[1..1000]of longint;
  l,n,i,j,k,k1,s,ss,t,min,m:longint;
begin
  readln(l);
  for k1:=1 to l do begin
    readln(n);
    fillchar(a,sizeof(a),0);
    for i:=1 to n do read(a[i]);
    for i:=1 to n-1 do
      for j:=i+1 to n do
        if a[i]>a[j] then begin
          t:=a[i];
          a[i]:=a[j];
          a[j]:=t;
        end;
    if n=2 then begin
      writeln(a[2]-a[1]);
    end
    else
    if odd(n) then begin
      s:=0;
      if a[1]=0 then ss:=a[2]
      else ss:=a[1];
      for i:=n downto n div 2+2 do s:=s*10+a[i];
      if ss=a[1] then begin
        for i:=2 to n div 2+1 do ss:=ss*10+a[i];
        writeln(ss-s);
      end
      else begin
        ss:=ss*10;
        for i:=3 to n div 2+1 do ss:=ss*10+a[i];
        writeln(ss-s)
      end;
    end
    else begin
      if a[1]=0 then t:=2
      else t:=1;
      min:=maxlongint;
      for i:=t to n-1 do
        if a[i+1]-a[i]<min then min:=a[i+1]-a[i];
      for i:=t to n-1 do
        if a[i+1]-a[i]=min then c[i]:=1;
      min:=maxlongint;
      for i:=t to n-1 do
        if c[i]=1 then begin
          b:=a;
          s:=b[i];
          ss:=b[i+1];
          b[i]:=maxlongint;
          b[i+1]:=maxlongint;
          for j:=1 to n-1 do
            for k:=j+1 to n do
              if b[j]>b[k] then begin
                t:=b[j];
                b[j]:=b[k];
                b[k]:=t;
              end;
          for j:=1 to (n-2) div 2 do ss:=ss*10+b[j];
          for j:=n-2 downto (n-2) div 2+1 do s:=s*10+b[j];
          if min>ss-s then min:=ss-s;
        end;
        writeln(min);
    end;
  end;
end.

