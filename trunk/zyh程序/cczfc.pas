const
maxl = 2000;
type
bitnode = array[0..maxl+1]of longint;
var
len, c : longint;
t : array[1..maxl]of shortint;
best, a, b : bitnode;
procedure init;
var
st : string[200];
i : longint;
begin
readln(st);
len := length(st);
for i := 1 to len do begin
t[i] := ord(st[i])-48;
end;
end;
procedure dec1(var a : bitnode);
var i : longint;
begin
i := 1;
while a[i] = 0 do begin
a[i] := 9; inc(i);
end;
dec(a[i]);
if (a[0] > 1) and (a[a[0]] = 0) then dec(a[0]);
end;
procedure inc1(var a : bitnode);
var i : longint;
begin
i := 1;
inc(a[i]);
while a[i] = 10 do begin
a[i] := 0;
inc(i);
inc(a[i]);
end;
if a[a[0]+1] <> 0 then inc(a[0]);
end;
function match(i : longint) : boolean;
var j : longint;
begin
if a[0] < i then begin
if t[1] <> 8 then exit(false);
for j := 1 to a[0] do begin
if t[i-j+1] <> a[j] then exit(false);
end;
exit(true);
end else begin
for j := 1 to i do
if t[i-j+1] <> a[j] then exit(false);
exit(true);
end;
end;
function can(i : longint) : boolean;
var j : longint;
begin
while i < len do begin
inc1(b);
j := i+1;
while (j <= len) and (j-i <= b[0]) do begin
if b[b[0]-j+i+1] <> t[j] then exit(false);
inc(j);
end;
inc(i, b[0]);
end;
exit(true);
end;
procedure printnum(var a : bitnode);
var i : longint;
begin
for i := a[0] downto 1 do write(a[i]);
writeln;
end;
procedure mul(var a : bitnode);
var b, i : longint;
begin
b := a[0];
for i := 1 to a[0] do a[i] := a[i]*b;
for i := 1 to a[0] do begin
inc(a[i+1], a[i] div 10);
a[i] := a[i] mod 10;
end;
while a[i+1] <> 0 do begin
inc(i);
a[i+1] := a[i] div 10;
a[i] := a[i] mod 10;
end;
a[0] := i;
end;
procedure minus(var a, b : bitnode);
var i : longint;
begin
for i := 1 to a[0] do begin
if a[i]-b[i] < 0 then begin
dec(a[i+1]); inc(a[i], 10);
end;
dec(a[i], b[i]);
end;
while (a[0] > 1) and (a[a[0]] = 0) do dec(a[0]);
end;
procedure print;
var
i : longint;
tem : bitnode;
begin
dec1(best);
i := best[0]-1;
mul(best);
fillchar(tem, sizeof(tem), 0);
while tem[0] < i do begin
inc(tem[0]); tem[tem[0]] := 9;
minus(best, tem);
end;
inc1(best);
for i := 1 to c do inc1(best);
printnum(best);
halt;
end;
function bigger(var a, b : bitnode): boolean;
var i : longint;
begin
if a[0] > b[0] then exit(true);
if a[0] < b[0] then exit(false);
for i := a[0] downto 1 do begin
if a[i] > b[i] then exit(true);
if a[i] < b[i] then exit(false);
end;
exit(false);
end;
procedure main;
var l, i, j, tem : longint; flag : boolean;
begin
flag := true;
for i := 1 to len do if t[i] <> 0 then begin flag := false; break; end;
if flag then begin
best[0] := len+1; best[best[0]] := 1; c := 1;
print;
end;
for i := 1 to len do best[i] := t[len-i+1];
best[0] := len;
if t[1] = 0 then begin
inc(best[0]);
best[best[0]] := 1;
end;
for i := len-len shr 1-1 downto 0 do begin
flag := true;
for j := 1 to i do if t[j] <> t[len-i+j] then begin
flag := false; break;
end;
if flag then begin
a[0] := len-i;
tem := 0;
for j := 1 to a[0] do a[j] := t[a[0]-j+1];
for j := 1 to a[0]-i do begin
if (a[a[0]] <> 0) and ((i = 0) or (a[1] <> 9) or (t[i+1] <> 9)) then if bigger(best, a) then begin best := a; 
c := tem; end;
a[a[0]+1] := a[1];
for l := 1 to a[0] do a[l] := a[l+1];
a[a[0]+1] := 0;
inc(tem);
end;
end;
end;
for l := 1 to best[0] do begin
for i := l downto 1 do if (i < len) and (t[i+1] <> 0) then begin
fillchar(b, sizeof(b), 0);
b[0] := l;
for j := l downto 1 do begin
if i+l-j+1 > len then break;
b[j] := t[i+l-j+1];
end;
if (b[0] = 1) and (b[1] = 1) then continue;
a := b; dec1(a);
if match(i) and can(i+l) then begin
if bigger(best, a) then begin
c:=a[0]-i;
best:=a;
end;
end;
end;
end;
print;
end;
begin
init;
main;
end.

