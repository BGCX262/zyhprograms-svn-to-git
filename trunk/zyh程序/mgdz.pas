var
f :array[0..201,0..4000]of boolean;
health :array[1..400]of longint;
n,k,i,ii,j,tot,res,halfhealth :longint;
begin
readln(n);tot:=0;
for i:=1 to n do  begin readln(health[i]);tot:=tot+health[i];end;
k:=n div 2;
halfhealth:=tot div 2;
if n mod 2=1 then k:=k+1;
fillchar(f,sizeof(f),false);
f[0,0]:=true;
for i:=1 to n do
for ii:=k-1 downto 0 do
for j:=halfhealth-health[i] downto 0 do
if f[ii,j] then f[ii+1,j+health[i]]:=true;
for i:=halfhealth downto 0 do
if f[k,i] then begin res:=i;break;end;
if n mod 2=1 then
for i:=halfhealth downto 0 do
if f[k-1,i] then begin
if i>res then res:=i;
break;
end;
writeln(res,' ',tot-res);
end.

