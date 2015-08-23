var st:string;
t,i,j,n,ch:longint;
a:array['A'..'C']of longint;
b:array[1..3]of longint;
begin
readln(n);
readln(st);
for i:=1 to n do st[i]:=upcase(st[i]);
for i:=1 to n do
if (st[i]='A') then inc(a['A'])
else if (st[i]='B') then inc(a['B'])
else if (st[i]='C') then inc(a['C']);
for i:=1 to 3 do b[i]:=i;
for i:=65 to 66 do
for j:=i+1 to 67 do
if a[chr(i)]<a[chr(j)] then begin
t:=a[chr(i)];
a[chr(i)]:=a[chr(j)];
a[chr(j)]:=t;
t:=b[i-64];
b[i-64]:=b[j-64];
b[j-64]:=t;
end
else if a[chr(i)]=a[chr(j)] then
if b[i-64]>b[j-64] then
begin
t:=a[chr(i)];
a[chr(i)]:=a[chr(j)];
a[chr(j)]:=t;
t:=b[i-64];
b[i-64]:=b[j-64];
b[j-64]:=t;
end;
for ch:=1 to 3 do
writeln(chr(b[ch]+96),' ',a[chr(64+ch)]);
end.
