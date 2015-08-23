var n,x,top,k,i,j:longint;a:array[1..1000]of longint;
begin
  while not(eof) do
  begin
    read(n);
    if n<=2 then
    read(x);
    case n of
    1:begin
        fillchar(a,sizeof(a),0);
        top:=x;
        i:=0;
        j:=0;
      end;
    2:begin
        if j=top then writeln('Full OV')
        else begin
        i:=1;
        inc(j);
        a[j]:=x;
        end;
      end;
    3:begin
        if j=0 then writeln('Empty OV')
        else begin
        a[i]:=0;
        for k:=i to j do
        a[k]:=a[k+1];
        dec(j);
        end;
       end;
    4:begin
        if (i>j)or(j=0) then writeln('Empty')
        else begin
        for k:=i to j-1 do
        write(a[k],' ');
        writeln(a[j]);
        end;
    end;
  end;
  end;
end.
