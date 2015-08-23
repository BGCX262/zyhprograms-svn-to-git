var ys:array[1..1000]of longint;
    b:array[1..100,1..100]of boolean;
    sum,n,m,k,i,u,v:longint;
procedure dg(j:integer);
var i,k:longint;t:boolean;
begin
  if j=n+1 then begin
  inc(sum);exit;end;
  for i:=1 to m do
  begin
    t:=true;
    for k:=1 to j-1 do
    if (ys[k]=i)and(b[j,k]) then begin t:=false;break;end;
    if t then
    begin
      ys[j]:=i;
      dg(j+1);
    end;
  end;
end;
begin
  assign(input,'color.in');reset(input);
  assign(output,'color.out');rewrite(output);
  readln(n,k,m);
  for i:=1 to k do
  begin
    readln(u,v);
    b[u,v]:=true;
    b[v,u]:=true;
  end;
  sum:=0;
  dg(1);
  writeln(sum);
  close(input);close(output);
end.