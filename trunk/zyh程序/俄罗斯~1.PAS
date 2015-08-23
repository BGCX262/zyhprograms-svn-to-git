USES Crt;
CONST
Change:Array [0..6,0..3,0..7] Of Byte =(((0,1,1,1,2,1,3,1),(1,0,1,1,1,2,1,3),(0,1,1,1,2,1,3,1),(1,0,1,1,1,2,1,3)),
                                        ((1,0,0,1,1,1,2,1),(1,0,1,1,1,2,2,1),(0,1,1,1,2,1,1,2),(1,0,0,1,1,1,1,2)),
                                        ((1,0,2,0,1,1,2,1),(1,0,2,0,1,1,2,1),(1,0,2,0,1,1,2,1),(1,0,2,0,1,1,2,1)),
                                        ((1,0,2,0,0,1,1,1),(0,0,0,1,1,1,1,2),(1,0,2,0,0,1,1,1),(0,0,0,1,1,1,1,2)),
                                        ((0,0,1,0,1,1,2,1),(1,0,0,1,1,1,0,2),(0,0,1,0,1,1,2,1),(1,0,0,1,1,1,0,2)),
                                        ((1,0,2,0,1,1,1,2),(0,0,0,1,1,1,2,1),(1,0,0,2,1,1,1,2),(2,2,0,1,1,1,2,1)),
                                        ((0,0,1,0,1,1,1,2),(2,0,0,1,1,1,2,1),(2,2,1,0,1,1,1,2),(0,2,0,1,1,1,2,1)));
VAR
  Board:Array [0..3,0..11,1..25] Of Byte;
  Players,N,Nowx,Nowy,Kind,Trans,Speed:Byte;
  Time,Score:Word;
  Now:Array [0..7] Of Byte;
PROCEDURE Furbish;
  VAR B,C:Byte;
  Begin
   textmode(7);
    For C:=24 Downto 2 Do Begin
      Gotoxy(1,C);
        For B:=1 To 10 Do
         If Board[0,B,C]=0 Then Write('  ')
          Else Write('лл');
        End;
  End;
PROCEDURE Clear;
Var A,B,C:Byte;D:Boolean;
Begin
  For A:=24 Downto 1 Do
   Begin
   textmode(7);
    D:=True;
    For B:=1 To 10 Do
     If Board[0,B,A]=0 Then D:=False;
    If D=True Then
     Begin
      Score:=Score+10;Gotoxy(1,1);Write(Score:5,'0');
      For C:=A Downto 2 Do
       For B:=1 To 10 Do
        Board[0,B,C]:=Board[0,B,C-1];
       End;
     End;
   Furbish;
  End;
FUNCTION Canmove(X,Y:Byte):Boolean;
BEGIN
textmode(7);
Canmove:=True;
If Board[0,X+Now[0],Y+Now[1]]>0 Then Canmove:=False;
If Board[0,X+Now[2],Y+Now[3]]>0 Then Canmove:=False;
If Board[0,X+Now[4],Y+Now[5]]>0 Then Canmove:=False;
If Board[0,X+Now[6],Y+Now[7]]>0 Then Canmove:=False;
End;
PROCEDURE Clean;
Begin
 textmode(7);
   Gotoxy((Nowx+Now[0])*2-1,Nowy+Now[1]);Write('  ');
   Gotoxy((Nowx+Now[2])*2-1,Nowy+Now[3]);Write('  ');
   Gotoxy((Nowx+Now[4])*2-1,Nowy+Now[5]);Write('  ');
   Gotoxy((Nowx+Now[6])*2-1,Nowy+Now[7]);Write('  ');
  End;
PROCEDURE Show;
Begin
 textmode(7);
   Gotoxy((Nowx+Now[0])*2-1,Nowy+Now[1]);Write('лл');
   Gotoxy((Nowx+Now[2])*2-1,Nowy+Now[3]);Write('лл');
   Gotoxy((Nowx+Now[4])*2-1,Nowy+Now[5]);Write('лл');
   Gotoxy((Nowx+Now[6])*2-1,Nowy+Now[7]);Write('лл');
  End;
var r:char;
begin
r:='t';
 while r='t' do begin
textmode(7);
Fillchar(Board,Sizeof(Board),0);
Randomize;Score:=0;
For N:=1 To 24 Do
  Board[0,0,N]:=1;
For N:=1 To 24 Do
  Board[0,11,N]:=1;
For N:=1 To 10 Do
  Board[0,N,25]:=1;
Window(31,2,50,25);Textcolor(black);Textbackground(15);
Clrscr;Window(31,2,51,25);
Speed:=1;
Kind:=Random(7);Trans:=Random(4);Nowx:=4;Nowy:=1;
For N:=0 To 7 Do
  Now[N]:=Change[Kind,Trans,N];
While Canmove(Nowx,Nowy) Do
  Begin
  Repeat
   Clean;Nowy:=Nowy+1;Show;
   Repeat
   If Keypressed Then
     Case Upcase(Readkey) Of
       #0:Case Readkey Of
           #75:If Canmove(Nowx-1,Nowy) Then Begin Clean;Nowx:=Nowx-1;Show;End;
           #77:If Canmove(Nowx+1,Nowy) Then Begin Clean;Nowx:=Nowx+1;Show;End;
           #80:Begin Clean;Repeat
                If Canmove(Nowx,Nowy+1) Then Nowy:=Nowy+1;
               Until Not(Canmove(Nowx,Nowy+1));Show;End;
           #61:Begin Gotoxy(9,12);Write('Pause');Repeat Delay(1000);Until Keypressed;Furbish;End;
           End;
       #27:Exit;
       ' ',#13:Begin
            Clean;Trans:=Trans+1;
            If Trans=4 Then Trans:=0;
            For N:=0 To 7 Do
             Now[N]:=Change[Kind,Trans,N];
            If Not(Canmove(Nowx,Nowy)) Then Begin Trans:=Trans-1;For N:=0 To 7 Do
             Now[N]:=Change[Kind,Trans,N];Show;End
             Else Show;
             End;
     End;
  Until Not(Keypressed);
   Delay((10-Speed)*50);
   Until Not(Canmove(Nowx,Nowy+1));
Score:=Score+1;Gotoxy(1,1);Write(Score:5,'0');Speed:=(Score Div 300)+1;
Board[0,Nowx+Now[0],Nowy+Now[1]]:=1;
Board[0,Nowx+Now[2],Nowy+Now[3]]:=1;
Board[0,Nowx+Now[4],Nowy+Now[5]]:=1;
Board[0,Nowx+Now[6],Nowy+Now[7]]:=1;
Clear;
   Kind:=Random(7);Trans:=Random(4);Nowx:=4;Nowy:=1;
   For N:=0 To 7 Do
    Now[N]:=Change[Kind,Trans,N];
  End;
   textbackground(white);
   clrscr;
   Gotoxy(7,12);textcolor(yellow);Write('GAME OVER');Readln;clrscr;gotoxy(1,1);writeln('press t to play again');writeln('');
  r:=readkey;
end;
END.
