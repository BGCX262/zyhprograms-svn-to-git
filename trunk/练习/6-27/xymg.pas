type arr=record
x,y:integer;
step:integer;
end;
const dirx:array[1..4] of integer=(-1,1,0,0);
diry:array[1..4] of integer=(0,0,1,-1);
var i,j,len,k,n,m,x,y,x1,y1,temp:integer;
map:array[1..100,1..100] of boolean;
a:array[1..10000] of arr;
procedure Work(x,y:integer;step:integer);
begin
if (x<1)or(y<1)or(x>n)or(y>m) then exit;
if map[x,y] then exit;
inc(len);
a[len].x:=x;
a[len].y:=y;
a[len].step:=step;
map[x,y]:=true;
end;
begin
readln(n,m);
fillchar(map,sizeof(map),false);
for i:=1 to n do
for j:=1 to m do begin read(temp); if temp=1 then 
map[i,j]:=true; end;
readln(a[1].x,a[1].y);
readln(x1,y1);
k:=0;
len:=1;
repeat
inc(k);
if k>len then break;
x:=a[k].x;
y:=a[k].y;
if (x=x1)and(y=y1) then begin writeln(a[k].step);halt; 
end;
for i:=1 to 4 do
Work(x+dirx[i],y+diry[i],a[k].step+1);
until false;
writeln('No Answer!');
end. 