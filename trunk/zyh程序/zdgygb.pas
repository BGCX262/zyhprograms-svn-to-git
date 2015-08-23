var
 x,y,p,q,ans,c:longint;
function gcd(a,b:longint):longint;
begin
if b=0 then gcd:=a
else gcd:=gcd(b,a mod b);
end;
begin
 readln(x,y);
 if(y mod x<>0) then write(0)
 else begin
 for p:=1 to y do
 begin
 if (p mod x=0)and (p mod p=0) then
 begin
 q:=x*y div p;
 c:=gcd(p,q);
 if (c=x)and(y mod p=0)and(y mod q=0) then begin inc(ans);end;
 end;
 end;
 write(ans);
 end;
end.
