var ans:array[0..100]of byte;
word:array[1..100]of string;
len:array[1..100]of longint;
n,i,j:longint;
s:string;
begin
assign(input,'word.in');
assign(output,'word.out');
reset(input);
rewrite(output);
readln(s);
readln(n);
for i:=1 to n do
begin
readln(word[i]);
len[i]:=length(word[i]);
end;
fillchar(ans,sizeof(ans),255);
ans[0]:=0;
for i:=1 to length(s) do
for j:=1 to n do
if len[j]<=i then
if copy(s,i-len[j]+1,len[j])=word[j] then
if ans[i-len[j]]+1<ans[i]  then
ans[i]:=ans[i-len[j]]+1;
writeln(ans[length(s)]);
close(input);
close(output);
end.

