var m:longint;
function solve(m:longint):longint;
var i,t,d:longint;
  flag:boolean;
begin
  if (m=1) then solve:=2
           else begin
             d:=2*m+1;
             t:=2;
             i:=1;
             flag:=False;
             repeat
               if (t=1) then begin
                 solve:=i*m;
                 flag:=True;
               end
                        else if (t=2*m) then begin
                          solve:=i*m-1;
                          flag:=True;
                        end
                                        else t:=(t*2)mod d;
               i:=i+1;
             until flag;
           end
end;
begin
  readln(m);
  writeln(solve(m));
end.
