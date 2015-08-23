var f:array[0..1,0..1000]of boolean;
  w,tm:array[0..1000]of string;
  p:array[0..9]of longint;
  aph:array[0..9]of string;
  i,k,l,m,n,j,t:longint;
  s:string;
begin
  assign(input,'Sramoc.in');reset(input);
  assign(output,'Sramoc.out');rewrite(output);
  fillchar(f,sizeof(f),true);
  readln(n,m);
  for i:=0 to n-1 do
  begin
    p[i]:=i mod m;
    str(i,aph[i]);
  end;
  j:=10 mod m;
  for i:=1 to n-1 do
    if (p[i]=0) then begin
      writeln(i);
      close(input);
      close(output);
      halt;
    end;
    if f[0,p[i]] then
    begin
       w[p[i]]:=w[0]+aph[i];
       f[0,p[i]]:=false;
    end;
  repeat
    for k:=1 to m-1 do
    if not(f[0,k]) then
      for i:=0 to n-1 do
      begin
        t:=(k*j+p[i])mod m;
        if t=0 then begin
          writeln(w[k]+aph[i]);
          close(input);
          close(output);
          halt;
        end
         else if f[1,t] then
          begin
            tm[t]:=w[k]+aph[i];
            f[1,t]:=false;
          end;
      end;
    f[0]:=f[1];
    fillchar(f[1],sizeof(f[1]),true);
    for i:=1 to m-1 do
      if not(f[0,i]) then w[i]:=tm[i];
  until false;
end.