var 
ax,an:array[1..1000,1..1000] of int64; 
sum,s:array[1..1000] of int64; 
i,j,max,min,n,m,p,k,e,t:longint; 
procedure count(p:longint); 
var 
i,j,e:longint; 
begin 
e:=0; 
for i:=p to n+p-1 do begin e:=e+s[i]; sum[i]:=e; end; 
for i:=n+p to n*2{+p} do sum[i]:=sum[i-n]; 
end; 
procedure secure; 
var 
i,j,sum:longint; 
begin 
sum:=0; 
for i:=1 to n do inc(sum,s[i]); 
writeln(10-abs(sum mod 10)); 
writeln(10-abs(sum mod 10)); 
halt; 
end; 
begin 
readln(n,m); 
for i:=1 to n do readln(s[i]); 
p:=0; max:=0; min:=maxlongint; fillchar(an,sizeof(an),$7F); 
for i:=n+1 to 2*n do s[i]:=s[i-n]; 
if m=1 then secure; 
for p:=1 to n do 
begin 
count(p); 
for j:=p to n+p-1 do 
begin 
ax[p,j]:=(10+(sum[j] mod 10)) mod 10; 
an[p,j]:=(10+(sum[j] mod 10)) mod 10; 
end; 
for i:=p+1 to m+p-1 do 
for j:=p to n+p-1 do 
for k:=i-1 to j-1 do 
begin 
t:=(10+((sum[j]-sum[k]) mod 10)) mod 10 *ax[i-1,k]; 
if ax[i,j]<t then ax[i,j]:=t; 
t:=(10+((sum[j]-sum[k]) mod 10)) mod 10 *an[i-1,k]; 
if an[i,j]>t then an[i,j]:=t; 
end; 
if ax[i,j]>max then max:=ax[i,j]; 
if an[i,j]<min then min:=an[i,j]; 
fillchar(ax,sizeof(ax),0); fillchar(an,sizeof(an),$7F); 
end; 
writeln(min); 
writeln(max); 
end.
