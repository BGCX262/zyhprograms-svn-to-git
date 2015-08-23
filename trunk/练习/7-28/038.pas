var n,v,k,i,s:longint;
a,f:array[1..1000]of longint;
function max(d,b,c:longint):longint;
var max1:longint;
begin
max:=0;max1:=0;
if (d>b) then
  if d-a[i]<=k then max1:=d
               else if b-a[i]<=k then max1:=b
                                 else begin
                                 max1:=0;
                                 writeln('YI DING YAO JIAN CHI JI HUA SHENG YU!');
                                 halt;
                                 end
         else if b-a[i]<=k then max1:=b
                           else if d-a[i]<=k then max1:=d
                                             else begin
                                             max1:=0;
                                             writeln('YI DING YAO JIAN CHI JI HUA SHENG YU!');
                                             halt;
                                             end;
if c>max1 then
if c-a[i]<=k then max:=c;
if max1>max then
if max1-a[i]<=k then max:=max1
                else begin
                  writeln('YI DING YAO JIAN CHI JI HUA SHENG YU!');
                  halt;
                end;
if max<a[i] then  begin
                    writeln('YI DING YAO JIAN CHI JI HUA SHENG YU!');
                    halt;
                  end;
end;
begin
readln(n,v,k);
for i:=2 to n do read(a[i]);
f[n]:=max(v,v,v);i:=n;
for i:=n-1 downto 2 do
f[i]:=max(f[i+1]+1,f[i+1]-1,f[i+1]);
for i:=2 to n do
s:=s+f[i];
writeln(s/(n-1):0:2);
end.
