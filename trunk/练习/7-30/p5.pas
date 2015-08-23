var x,y:string;
i,n:longint;
a,b,c:array[1..200]of longint;
begin
assign(input,'p5.in');
assign(output,'p5.out');
reset(input);
rewrite(output);
readln(x);
readln(y);
for i:=1 to length(x) do a[i]:=ord(x[length(x)-i+1])-48;
for i:=1 to length(y) do b[i]:=ord(y[length(y)-i+1])-48;
if length(x)>length(y) then n:=length(x)
else n:=length(y);
for i:=1 to n do
begin
if a[i]-b[i]<0 then begin
c[i]:=a[i]+10-b[i];
a[i+1]:=a[i+1]-1;
end
else
c[i]:=a[i]-b[i];
end;
while (c[n]=0)and(n>1) do dec(n);
for i:=n downto 1 do write(c[i]);
close(input);
close(output);
end.
