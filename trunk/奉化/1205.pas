const a:array[0..14]of longint=(1,2,4,8,16,32,64,128,256,512,1024,2048,4096,8192,16384);
var b:array[0..32767]of boolean;
st:string;
i,l,n,sum1,sum:longint;
procedure asd(step:longint);
var i:longint;
begin
if l+1=step then begin
b[sum1]:=true;
exit;
end;
if st[step]='1' then begin
sum1:=a[l-step]+sum1;
asd(step+1);
sum1:=sum1-a[l-step];
end
else if st[step]='0' then asd(step+1)
else
for i:=0 to 1 do
begin
sum1:=sum1+a[l-step]*i;
asd(step+1);
sum1:=sum1-a[l-step]*i;
end;
end;
begin
readln(l,n);
for i:=1 to n do
begin
readln(st);
sum1:=0;
asd(1);
end;
for i:=0 to 32767 do
if b[i] then inc(sum);
writeln(sum);
end.
