var
a,b:QWord;
begin
readln(a,b);
if (odd(a)) and (odd(b)) then writeln((a+b)div 2);
if (not(odd(a))) and (not(odd(b))) then writeln('-',(a+b) div 2);
if (not(odd(a))) and (odd(b)) then writeln((b-a+1)div 2);
if (odd(a)) and (not(odd(b))) then writeln('-',(b-a+1) div 2);
end.