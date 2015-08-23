var
s,sz,dz:string[50];
t,l,lz,xx:byte;
begin
readln(s);
t:=1;l:=length(s);
if s[1]='-' then begin inc(t); write('F'); end;
if s[1]='+' then inc(t);
while not ((s[t]='.') or (t>l)) do
begin
if not ((sz='') and (s[t]='0')) then
sz:=sz+s[t];
inc(t);
end;
if sz=''
then write('0')
else begin
lz:=length(sz); xx:=1;
while lz<>0 do
begin
if (xx=2) and (sz[lz]<>'0') then dz:='S'+dz;
if (xx=3) and (sz[lz]<>'0') then dz:='B'+dz;
if (xx=4) and (sz[lz]<>'0') then dz:='Q'+dz;
if (xx=5) and (sz[lz]<>'0') then dz:='W'+dz;
if (xx=6) and (sz[lz]<>'0') then dz:='S'+dz;
if (xx=7) and (sz[lz]<>'0') then dz:='B'+dz;
if (xx=8) and (sz[lz]<>'0') then dz:='Q'+dz;
if (xx=9) and (sz[lz]<>'0') then dz:='Y'+dz;
if not((dz[1]='0') and (sz[lz]='0')) then
if  not((dz='')and(sz[lz]='0')) then
dz:=sz[lz]+dz;
dec(lz); inc(xx);
end;
write(dz);
end;
if (s[t]='.') and (l>t) then
begin
inc(t);write('D');
while t<l+1 do begin write(s[t]); inc(t); end;
end;
end. 