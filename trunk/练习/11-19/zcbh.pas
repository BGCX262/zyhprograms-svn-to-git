var     
min,answer,bagi:longint;      
a,b:string;a1,b1:array[1..50]of string;t:boolean;ch:char;i,n:longint;      
function max(a,b:longint):longint;      
begin     
  if a>b then max:=a      
  else max:=b;      
end;      
procedure dg(step,last:longint;a:string);      
var x,i,j:longint;st,st1:string;      
begin     
  if step=0 then     
  begin     
    if a=b then     
    begin     
      writeln(bagi);      
      halt;      
    end;      
    exit;      
  end;      
  for i:=1 to n do     
  for j:=max(1,last-length(a1[i])) to length(a)-length(a1[i])+1 do     
    if copy(a,j,length(a1[i]))=a1[i] then     
      dg(step-1,j,copy(a,1,j-1)+b1[i]+copy(a,j+length(a1[i]),length(a)-j-length(a1[i])+1));      
end;      
begin     
  read(ch);min:=11;      
  while ch<>' ' do     
  begin     
    a:=a+ch;      
    read(ch);      
  end;      
  readln(b);      
  read(ch);      
  while not eof do     
  begin     
     inc(i);      
     while ch<>' ' do     
     begin     
     a1[i]:=a1[i]+ch;      
     read(ch);      
     end;      
     readln(b1[i]);      
      read(ch);      
  end;      
  n:=i;      
  for answer:=1 to 10 do     
  begin     
    bagi:=answer;      
    dg(answer,0,a);      
  end;      
  writeln('NO ANSWER!');      
end.    
