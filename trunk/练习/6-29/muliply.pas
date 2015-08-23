var i,j,n1,n2,n,t:integer;x,y:string;
a,b,c:array[1..1000]of integer;
begin
assign(input,'muliply.in');
assign(output,'muliply.out');
reset(input);
rewrite(output);
readln(x);
readln(y);
n1:=length(x);n2:=length(y);
if (x='0')or(y='0') then begin
writeln('0');
close(input);
close(output);
halt;
end;
if n1>n2 then n:=n1
else n:=n2;
for i:=1 to n do begin
a[i]:=0;
b[i]:=0;
c[i]:=0;
end;
for i:=n1 downto 1 do a[n1-i+1]:=ord(x[i])-ord('0');
for i:=n2 downto 1 do b[n2-i+1]:=ord(y[i])-ord('0');
for i:=1 to n1 do
for j:=1 to n2 do
begin
t:=a[i]*b[j];
c[i+j-1]:=c[i+j-1]+t;
c[i+j]:=c[i+j]+c[i+j-1] div 10;
c[i+j-1]:=c[i+j-1] mod 10;
end;
if c[n1+n2]>0 then n:=n1+n2
else n:=n1+n2-1;
for i:=n downto 1 do write(c[i]);
close(input);
close(output);
end.
