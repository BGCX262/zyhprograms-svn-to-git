var a,b,c:char;
begin
for a:='X' to 'Z' do
for b:='X' to 'Z' do
if b<>a then
for c:='X' to 'Z' do
if (b<>c)and(a<>c) then
if not(a='X') then
if not(c='X') then
if not(c='Z') then
begin
writeln('A:',a);
writeln('B:',b);
writeln('C:',c);
end;
end.