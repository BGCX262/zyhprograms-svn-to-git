var
 x10,y1,x1,x2,x3,x4,x5,x6,x7:integer;
 magic:array[1..4,1..4] of integer;
 x,i,j:integer;
 a:array[1..16] of integer; first:boolean;
function geti(x,y:integer):integer;
begin
 geti:=(x-1)*4+y;
end;
function comply(i:integer):boolean;
var ii:integer;
begin
 comply:=false;
 if (a[i]<1) or (a[i]>16) then exit;
 for ii:=1 to i-1 do if a[ii]=a[i] then exit;
 if ((i<>x) and (a[i]=1)) or ((i=x) and (a[i]<>1)) then exit;
 comply:=true;
end;
begin
 readln(x10,y1);
 magic[x10,y1]:=1;
 x:=(x10-1)*4+y1;
 first:=true;
 for x1:=1 to 16 do begin
  a[1]:=x1;
 if comply(1) then begin
  for x2:=1 to 16 do begin
     a[2]:=x2;
  if comply(2) then begin
   for x3:=1 to 16 do begin
   a[3]:=x3;
   if comply(3) then begin
    a[4]:=34-a[1]-a[2]-a[3];
    if comply(4) then begin
     for x4:=1 to 16 do begin
      a[5]:=x4;
     if comply(5) then begin
      a[6]:=34-a[1]-a[2]-a[5]; if comply(6) then begin
       for x5:=1 to 16 do begin
       a[7]:=x5;
       if comply(7) then begin
        a[8]:=34-a[5]-a[6]-a[7]; if (a[3]+a[4]+a[7]+a[8]=34) and comply(8) then begin
         for x6:=1 to 16 do begin
         a[9]:=x6;
         if comply(9) then begin
          for x7:=1 to 16 do begin
           a[10]:=x7;
          if comply(10) then begin
           a[11]:=34-a[6]-a[7]-a[10]; if comply(11) then begin
            a[12]:=34-a[9]-a[10]-a[11]; if comply(12) then begin
             a[13]:=34-a[1]-a[5]-a[9]; if (a[4]+a[7]+a[10]+a[13]=34) and comply(13) then begin
              a[14]:=34-a[2]-a[6]-a[10]; if (a[9]+a[10]+a[13]+a[14]=34) and comply(14) then begin
               a[15]:=34-a[3]-a[7]-a[11]; if comply(15) then begin
                a[16]:=34-a[13]-a[14]-a[15];
                if (a[11]+a[12]+a[15]+a[16]=34)
                 and (a[1]+a[4]+a[13]+a[16]=34)
                 and (a[1]+a[6]+a[11]+a[16]=34)
                 and comply(16) then begin
                 if not first then writeln;
                 first:=false;
                 for i:=1 to 4 do begin
                  for j:=1 to 3 do write(a[geti(i,j)],' ');
                  writeln(a[geti(i,4)]);
                 end;
                end;
               end;
              end;
             end;
            end;
           end;
          end;
         end;
        end;
       end;
      end;
     end;
    end;
   end;
  end;
 end;
 end;
 end;
 end;
 end;
 end;
 end;
 end;
end.
