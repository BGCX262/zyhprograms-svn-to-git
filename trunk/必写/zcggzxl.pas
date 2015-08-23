var x,y,s:string;
  w1,w2,i,j,max:longint;
  a,b:array[0..100,0..100]of longint;
procedure find(i,j:longint);
begin
  if b[i,j]=1 then begin
    if (i-1=0)or(j-1=0) then s:=s+x[i]
                        else begin
                          s:=s+x[i];
                          find(i-1,j-1);
                        end;
  end
              else if b[i,j]=2 then begin
                             find(i-1,j);
              end
                            else begin
                                           find(i,j-1);
                            end;
end;
begin
  readln(x);
  readln(y);
  w1:=length(x);
  w2:=length(y);
  for i:=1 to w1 do
    for j:=1 to w2 do
      if x[i]=y[j] then begin
        a[i,j]:=a[i-1,j-1]+1;
        b[i,j]:=1;
      end
                   else if a[i-1,j]>a[i,j-1] then begin
                     a[i,j]:=a[i-1,j];
                     b[i,j]:=2;
                   end
                                             else begin
                                               a[i,j]:=a[i,j-1];
                                               b[i,j]:=3;
                                             end;
  writeln(a[w1,w2]);
  find(w1,w2);
  for i:=a[w1,w2] downto 1 do write(s[i]);
end.
