program chess(input,output);
uses crt;
var a:array[1..50,1..50] of integer;
    c,d:char;
    x,y:integer;
    q,p:boolean;
    m,n,j:longint;
 procedure p1move;
  begin
   gotoxy(x,y);
   textcolor(red);
   write(chr($db));
   gotoxy(x,y);
   textcolor(green);
   while (c<>'q') do begin
   c:=readkey;
   if (c='q')and(a[x,y]=0) then
     begin
     gotoxy(x,y);
     textcolor(black);
     write(chr($db));
     a[x,y]:=1;
     if x<50 then begin
      inc(x);gotoxy(x,y);
      if a[x,y]=0 then textcolor(green)
      else if a[x,y]=1 then textcolor(black)
      else if a[x,y]=2 then textcolor(15);
      write(chr($db));
     end
     else if x=50 then begin
     dec(x);
     gotoxy(x,y);
     if a[x,y]=0 then textcolor(green)
     else if a[x,y]=1 then textcolor(black)
     else if a[x,y]=2 then textcolor(15);
     write(chr($db));
     end;
    end
   else if (c='w') and (y>1) then
    begin
    if a[x,y]=0 then begin
     gotoxy(x,y);
     textcolor(green);
     write(chr($db));
     dec(y);
     gotoxy(x,y);
     textcolor(red);
     write(chr($db));
    end
    else if a[x,y]=1 then begin
    gotoxy(x,y);
     textcolor(black);
     write(chr($db));
     dec(y);
     gotoxy(x,y);
     textcolor(red);
     write(chr($db));
    end
    else if a[x,y]=2 then begin
    gotoxy(x,y);
     textcolor(white);
     write(chr($db));
     dec(y);
     gotoxy(x,y);
     textcolor(red);
     write(chr($db));
    end;
   end
   else if (c='s') and (y<25) then
    begin
    if a[x,y]=0 then begin
     gotoxy(x,y);
     textcolor(green);
     write(chr($db));
     inc(y);
     gotoxy(x,y);
     textcolor(red);
     write(chr($db));
    end
    else if a[x,y]=1 then begin
    gotoxy(x,y);
     textcolor(black);
     write(chr($db));
     inc(y);
     gotoxy(x,y);
     textcolor(red);
     write(chr($db));
    end
    else if a[x,y]=2 then begin
    gotoxy(x,y);
     textcolor(white);
     write(chr($db));
     inc(y);
     gotoxy(x,y);
     textcolor(red);
     write(chr($db));
    end;
   end
   else if (c='a') and (not(x<=1)) then
    begin
   if a[x,y]=0 then begin
    gotoxy(x,y);
     textcolor(green);
     write(chr($db));
     dec(x);
     gotoxy(x,y);
     textcolor(red);
     write(chr($db));
    end
  else if a[x,y]=1 then begin
    gotoxy(x,y);
     textcolor(black);
     write(chr($db));
     dec(x);
     gotoxy(x,y);
     textcolor(red);
     write(chr($db));
    end
    else if a[x,y]=2 then begin
    gotoxy(x,y);
     textcolor(white);
     write(chr($db));
     dec(x);
     gotoxy(x,y);
     textcolor(red);
     write(chr($db));
    end;
  end
   else if (c='d') and (not(x>=50)) then
    begin
    if a[x,y]=0 then begin
     gotoxy(x,y);
     textcolor(green);
     write(chr($db));
     inc(x);
     gotoxy(x,y);
     textcolor(red);
     write(chr($db));
    end
    else if a[x,y]=1 then begin
    gotoxy(x,y);
     textcolor(black);
     write(chr($db));
     inc(x);
     gotoxy(x,y);
     textcolor(red);
     write(chr($db));
    end
    else if a[x,y]=2 then begin
     gotoxy(x,y);
     textcolor(white);
     write(chr($db));
     inc(x);
     gotoxy(x,y);
     textcolor(red);
     write(chr($db));
    end;
   end;
   end;
  end;
procedure p2move;
 begin
   gotoxy(x,y);
   textcolor(lightblue);
   write(chr($db));
   gotoxy(x,y);
   textcolor(green);
   while (c<>'o') do begin
   c:=readkey;
   if (c='o')and(a[x,y]=0) then
    begin
     gotoxy(x,y);
     textcolor(15);
     write(chr($db));
     a[x,y]:=2;
     if x<50 then begin
      inc(x);gotoxy(x,y);
      if a[x,y]=0 then textcolor(green)
      else if a[x,y]=1 then textcolor(black)
      else if a[x,y]=2 then textcolor(15);
      write(chr($db));
     end
     else if x=50 then begin
     dec(x);
     gotoxy(x,y);
     if a[x,y]=0 then textcolor(green)
     else if a[x,y]=1 then textcolor(black)
     else if a[x,y]=2 then textcolor(15);
     write(chr($db));
     end;
    end
   else if (c='i') and (y>1) then
    begin
    if a[x,y]=0 then begin
     gotoxy(x,y);
     textcolor(green);
     write(chr($db));
     dec(y);
     gotoxy(x,y);
     textcolor(lightblue);
     write(chr($db));
    end
    else if a[x,y]=1 then begin
    gotoxy(x,y);
     textcolor(black);
     write(chr($db));
     dec(y);
     gotoxy(x,y);
     textcolor(lightblue);
     write(chr($db));
    end
    else if a[x,y]=2 then begin
    gotoxy(x,y);
     textcolor(white);
     write(chr($db));
     dec(y);
     gotoxy(x,y);
     textcolor(lightblue);
     write(chr($db));
    end;
   end
   else if (c='k') and (y<25) then
    begin
    if a[x,y]=0 then begin
     gotoxy(x,y);
     textcolor(green);
     write(chr($db));
     inc(y);
     gotoxy(x,y);
     textcolor(lightblue);
     write(chr($db));
    end
    else if a[x,y]=1 then begin
    gotoxy(x,y);
     textcolor(black);
     write(chr($db));
     inc(y);
     gotoxy(x,y);
     textcolor(lightblue);
     write(chr($db));
    end
    else if a[x,y]=2 then begin
    gotoxy(x,y);
     textcolor(white);
     write(chr($db));
     inc(y);
     gotoxy(x,y);
     textcolor(lightblue);
     write(chr($db));
    end;
   end
   else if (c='j') and (not(x<=1)) then
    begin
   if a[x,y]=0 then begin
    gotoxy(x,y);
     textcolor(green);
     write(chr($db));
     dec(x);
     gotoxy(x,y);
     textcolor(lightblue);
     write(chr($db));
    end
  else if a[x,y]=1 then begin
    gotoxy(x,y);
     textcolor(black);
     write(chr($db));
     dec(x);
     gotoxy(x,y);
     textcolor(lightblue);
     write(chr($db));
    end
    else if a[x,y]=2 then begin
    gotoxy(x,y);
     textcolor(white);
     write(chr($db));
     dec(x);
     gotoxy(x,y);
     textcolor(lightblue);
     write(chr($db));
    end;
  end
   else if (c='l') and (not(x>=50)) then
    begin
    if a[x,y]=0 then begin
     gotoxy(x,y);
     textcolor(green);
     write(chr($db));
     inc(x);
     gotoxy(x,y);
     textcolor(lightblue);
     write(chr($db));
    end
    else if a[x,y]=1 then begin
    gotoxy(x,y);
     textcolor(black);
     write(chr($db));
     inc(x);
     gotoxy(x,y);
     textcolor(lightblue);
     write(chr($db));
    end
    else if a[x,y]=2 then begin
     gotoxy(x,y);
     textcolor(white);
     write(chr($db));
     inc(x);
     gotoxy(x,y);
     textcolor(lightblue);
     write(chr($db));
    end;
   end;
   end;
 end;
 procedure winornot;
 begin
 textcolor(black);
  q:=false;
  for m:=1 to 50 do begin
   for n:=1 to 21 do begin
    if (a[m,n]=a[m,n+1])and(a[m,n+1]=a[m,n+2])and(a[m,n+2]=a[m,n+3])and(a[m,n+3]=a[m,n+4])and(a[m,n+4]=2) then begin
     textbackground(green);
     clrscr;
     gotoxy(1,1);
     writeln('p2 wins');
     readln;
     q:=true;
    end
    else  if (a[m,n]=a[m,n+1])and(a[m,n+1]=a[m,n+2])and(a[m,n+2]=a[m,n+3])and(a[m,n+3]=a[m,n+4])and(a[m,n+4]=1) then begin
     textbackground(green);
     clrscr;
     gotoxy(1,1);
     writeln('p1 wins');
     readln;
     q:=true;
    end;
   end;
  end;
  for n:=1 to 50 do begin
   for m:=1 to 21 do begin
     if (a[m,n]=a[m+1,n])and(a[m+1,n]=a[m+2,n])and(a[m+2,n]=a[m+3,n])and(a[m+3,n]=a[m+4,n])and(a[m+4,n]=1) then begin
     textbackground(green);
     clrscr;
     gotoxy(1,1);
     writeln('p1 wins');
     readln;
     q:=true;
     end
     else  if (a[m,n]=a[m+1,n])and(a[m+1,n]=a[m+2,n])and(a[m+2,n]=a[m+3,n])and(a[m+3,n]=a[m+4,n])and(a[m+4,n]=2) then begin
     textbackground(green);
     clrscr;
     gotoxy(1,1);
     writeln('p2 wins');
     readln;
     q:=true;
     end;
   end;
  end;
 for m:=1 to 46 do
  begin
   for n:=1 to 46 do
    begin
     if (a[m,n]=a[m+1,n+1])and(a[m,n]=a[m+2,n+2])and(a[m,n]=a[m+3,n+3])and(a[m,n]=a[m+4,n+4])and(a[m,n]=1)then
      begin
       textbackground(green);
       clrscr;
       gotoxy(1,1);
       write('p1 wins');
       readln;
       q:=true;
      end
     else  if (a[m,n]=a[m+1,n+1])and(a[m,n]=a[m+2,n+2])and(a[m,n]=a[m+3,n+3])and(a[m,n]=a[m+4,n+4])and(a[m,n]=2)then
      begin
       textbackground(green);
       clrscr;
       gotoxy(1,1);
       write('p2 wins');
       readln;
       q:=true;
      end;
     end;
    end;
    for m:=5 to 50 do
  begin
    for n:=1 to 46 do
    begin
     if (a[m,n]=a[m-1,n+1])and(a[m,n]=a[m-2,n+2])and(a[m,n]=a[m-3,n+3])and(a[m,n]=a[m-4,n+4])and(a[m,n]=1)then
      begin
       textbackground(green);
       clrscr;
       gotoxy(1,1);
       write('p1 wins');
       readln;
       q:=true;
      end
     else  if (a[m,n]=a[m-1,n+1])and(a[m,n]=a[m-2,n+2])and(a[m,n]=a[m-3,n+3])and(a[m,n]=a[m-4,n+4])and(a[m,n]=2)then
      begin
       textbackground(green);
       clrscr;
       gotoxy(1,1);
       write('p2 wins');
       readln;
       q:=true;
      end;
     end;
    end;
end;
begin
d:='t';
 while d='t' do begin
 for n:=1 to 50 do begin
  for m:=1 to 50 do begin
   a[m,n]:=0;
  end;
 end;
 textbackground(green);
 textmode(6);
 clrscr;
 gotoxy(1,1);
 textcolor(black);
 write('press entre to begin');
 readln;
 textbackground(green);
 clrscr;
 q:=false;
 p:=true;
 for j:=1 to 200000 do begin
 x:=19;y:=12;
 if (c<>'p')and(q<>true) then begin
  p1move;
  winornot;
 end;
 if q=true then break;
 c:='a';
 x:=19;y:=12;
 if (c<>'p')and(q<>true) then begin
  p2move;
  winornot;
 end;
 if q=true then break;
 c:='a';
end;
c:='a';
gotoxy(1,2);
writeln('press t to try again ');
writeln('or press any botton to exit');
d:=readkey;
end;
end.

