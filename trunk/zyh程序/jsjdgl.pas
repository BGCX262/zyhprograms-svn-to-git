var
i,j,k,n,m,w,v,vvv,vv:longint;
jie:extended;
a,b:array[0..100]of longint;
s,c,aw:string;
q:char;
ss,s1:array[0..100]of string;
begin
readln(s);
for i:=1 to length(s) do
begin
if (s[i]>='a')and(s[i]<='z')
then q:=s[i];
if s[i]='='
then n:=i;
end;
if s[1]<>'-'
then begin insert('+',s,1); inc(n); end;
if s[n+1]<>'-'
then insert('+',s,n+1);
j:=0;
k:=0;
w:=1;
insert('-',s,length(s)+1);
for i:=1 to length(s) do
begin
if ((s[i]='-')or(s[i]='+')or(s[i]='='))and(i<>1)and(i<>n+1)
then begin
c:=copy(s,w+1,i-w-1);
vvv:=pos(q,c);
if vvv=0
then begin
if s[w]='+'
then begin val(c,v); if i>n then j:=j-v else j:=j+v; end
else begin val(c,v); if i>n then j:=j+v else j:=j-v; end;end
else begin
for vv:=1 to length(c) do
if c[vv]=q
then begin aw:=copy(c,1,vv-1); val(aw,v);
if s[w]='+'
then begin if i>n then k:=k-v else k:=k+v; end
else begin if i>n then k:=k+v else k:=k-v; 
end;end;end;
if s[i]<>'='
then w:=i
else w:=i+1;
end;
end;
jie:=-j/k;
write(q,'=',jie:0:3);
end.

