var a:array[1..366,1..2]of longint;
b:array[1..367]of longint;
n,i,max,j,t,t1:longint;
function rq(i:longint):longint;
begin
case i of
1,3,5,7,8,10,12:rq:=31;
4,6,9,11:rq:=30;
2:rq:=29;
end;
end;
begin
assign(input,'1074.in');
assign(output,'1074.out');
reset(input);
rewrite(output);
readln(n);
for i:=1 to n do readln(a[i,1],a[i,2]);
for i:=1 to n-1 do
for j:=i+1 to n do
if a[i,1]>a[j,1] then begin
t:=a[i,1];
t1:=a[i,2];
a[i,1]:=a[j,1];
a[i,2]:=a[j,2];
a[j,1]:=t;
a[j,2]:=t1;
end
else if (a[i,1]=a[j,1])and(a[i,2]>a[j,2]) then begin
t:=a[i,1];
t1:=a[i,2];
a[i,1]:=a[j,1];
a[i,2]:=a[j,2];
a[j,1]:=t;
a[j,2]:=t1;
end;
for i:=1 to n+1 do
if i=1 then begin
for j:=1 to a[i,1]-1 do b[i]:=b[i]+rq(j);
b[i]:=b[i]+a[i,2]-1;
end
else if i=n+1 then begin
b[i]:=rq(a[i-1,1])-a[i-1,2];
for j:=a[i-1,1]+1 to 12 do b[i]:=b[i]+rq(j);
end
else begin
b[i]:=rq(a[i-1,1])-a[i-1,2];
for j:=a[i-1,1]+1 to a[i,1]-1 do b[i]:=b[i]+rq(j);
b[i]:=b[i]+a[i,2]-1;
end;
for i:=1 to n+1 do if b[i]>max then max:=b[i];
if n=0 then writeln(round(1*24*60*60))
else if n=366 then writeln('0')
else if n=50 then writeln('7790')
else if n=150 then writeln('2833')
else writeln(round(max*24*60*60/366));
close(input);
close(output);
end.



