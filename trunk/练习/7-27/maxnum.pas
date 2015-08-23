var st:array[1..50]of string;
i,j,n,s:longint;
t:string;
function ss(a,b:string):boolean;
var i,j:longint;
begin
if length(a)=length(b) then
if a<b then begin
ss:=true;exit;
end
       else begin
         ss:=false;exit;end
                       else begin
                         i:=0;j:=0;
                         while (i<=length(a))and(j<=length(b)) do
                         begin
                           if i<length(a) then inc(i);
                           if j<length(b) then inc(j);
                           if a[i]<b[j] then begin
                           ss:=true;
                           exit;
                           end;
                           if a[i]>b[j] then begin
                           ss:=false;
                           exit;
                           end;
                         end;
                         end;
end;
begin
assign(input,'maxnum.in');
assign(output,'maxnum.out');
reset(input);
rewrite(output);
readln(n);
for i:=1 to n do begin
read(s);
str(s,st[i]);
end;
for i:=1 to n-1 do
for j:=i+1 to n do
if ss(st[i],st[j]) then begin
t:=st[i];
st[i]:=st[j];
st[j]:=t;
end;
for i:=1 to n do write(st[i]);
close(input);
close(output);
end.


