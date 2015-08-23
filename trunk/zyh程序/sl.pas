type arr = array[1..10000] of integer;
var
n,i,ans: integer;
a,b: arr;
function minesweeping(a:arr; p:integer):boolean;
begin
b[1]:=p;
dec(a[1],ord(p=1));
dec(a[2],ord(p=1));
for i:= 2 to n-1 do
begin
b[i]:=ord((a[i-1]>0) and (a[i]>0) and (a[i+1]>0));
dec(a[i-1],ord(b[i]=1));
dec(a[i],ord(b[i]=1));
dec(a[i+1],ord(b[i]=1));
end;
b[n]:=ord((a[n-1]>0) and (a[n]>0));
dec(a[n-1],ord(b[n]=1));
dec(a[n],ord(b[n]=1));
for i:= 1 to n do
if a[i]<>0 then exit(false);
exit(true);
end;
begin
readln(n);
for i:= 1 to n do read(a[i]);
if minesweeping(a,0) then inc(ans);
if minesweeping(a,1) then inc(ans);
writeln(ans);
end. 
