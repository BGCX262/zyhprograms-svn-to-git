var n1,n2,m1,m2:ansistring;
i,l1,l2,l4,l,j:longint;
x:qword;
a,c,b,c1:array[0..20000]of longint;
begin
readln(n1);
readln(m1);
if pos('.',n1)<>0 then
begin
n2:=copy(n1,pos('.',n1)+1,length(n1)-pos('.',n1));
delete(n1,pos('.',n1),length(n1)-pos('.',n1)+1);
end;
if pos('.',m1)<>0 then
begin
m2:=copy(m1,pos('.',m1)+1,length(m1)-pos('.',m1));
delete(m1,pos('.',m1),length(m1)-pos('.',m1)+1);
end;
l1:=length(n1);l2:=length(m1);
if l1>l2 then l:=l1
else l:=l2;
for i:=1 to l1 do a[i]:=ord(n1[l1-i+1])-48;
for i:=1 to l2 do b[i]:=ord(m1[l2-i+1])-48;
for i:=1 to l do
begin
c[i]:=a[i]+b[i]+c[i];
c[i+1]:=c[i] div 10;
c[i]:=c[i] mod 10;
end;
if c[l+1]>0 then inc(l);
l1:=length(n2);l2:=length(m2);
if l1>l2 then l4:=l1
else l4:=l2;
fillchar(a,sizeof(a),0);
fillchar(b,sizeof(b),0);
for i:=1 to l1 do a[i]:=ord(n2[i])-48;
for i:=1 to l2 do b[i]:=ord(m2[i])-48;
x:=0;
for i:=l4 downto 1 do
begin
c1[i]:=a[i]+b[i]+x;
x:=c1[i] div 10;
c1[i]:=c1[i] mod 10;
end;
if x>0 then begin
str(x,n1);
fillchar(a,sizeof(a),0);
for i:=1 to length(n1) do a[i]:=ord(n1[length(n1)-i+1])-48;
for i:=1 to l do
begin
c[i]:=a[i]+c[i];
c[i+1]:=c[i+1]+c[i] div 10;
c[i]:=c[i] mod 10;
end;
end;
if c[l+1]>0 then inc(l);
for i:=l downto 1 do write(c[i]);
while (c1[l4]=0)and(l4>0) do dec(l4);
if l4<>0 then write('.');
for i:=1 to l4 do write(c1[i]);
end.