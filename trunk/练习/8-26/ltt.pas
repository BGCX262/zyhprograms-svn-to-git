Const 
Work='drawing'; 
Type 
Rec=Record 
X,Y:longint; 
End; 
Arr=Array[1..20000] of Longint; 
Var 
A:Array[1..300,1..300] of Longint; 
N,M,MaxN,MaxM:Longint; 
B:Array[1..1000,1..1000]of Char; 
Procedure Inp; 
Var i,j:Longint; 
Begin 
Read(n,m); 
For i:=1 to N do 
For j:=1 to M do 
Read(a[n+1-i,j]); 
MaxN:=0;MaxM:=0; 
For i:=1 to N do 
For j:=1 to M do 
Begin 
If 2*i+4*j+1>MaxM then MaxM:=2*i+4*j+1; 
If (2*i+3*a[i,j]+1>MaxN) then Maxn:=2*i+3*a[i,j]+1; 
End; 
For i:=1 to MaxN do 
For j:=1 to MaxM do 
B[i,j]:='.'; 
End; 
Procedure Main; 
Var i,j,k,x,y:Longint; 
Begin 
For i:=N downto 1 do 
For j:=1 to M do 
For k:=1 to A[i,j] do 
Begin 
Y:=2*i+4*j-5;X:=2*i+3*k-4; 
B[x,y]:='+'; 
B[x,y+1]:='-'; 
B[x,y+2]:='-'; 
B[x,y+3]:='-'; 
B[x,y+4]:='+'; 
B[x+1,y]:='|'; 
B[x+1,y+1]:=' '; 
B[x+1,y+2]:=' '; 
B[x+1,y+3]:=' '; 
B[x+1,y+4]:='|'; 
B[x+1,y+5]:='/'; 
B[x+2,y]:='|'; 
B[x+2,y+1]:=' '; 
B[x+2,y+2]:=' '; 
B[x+2,y+3]:=' '; 
B[x+2,y+4]:='|'; 
B[x+2,y+5]:=' '; 
B[x+2,y+6]:='+'; 
B[x+3,y]:='+'; 
B[x+3,y+1]:='-'; 
B[x+3,y+2]:='-'; 
B[x+3,y+3]:='-'; 
B[x+3,y+4]:='+'; 
B[x+3,y+5]:=' '; 
B[x+3,y+6]:='|'; 
B[x+4,y+1]:='/'; 
B[x+4,y+2]:=' '; 
B[x+4,y+3]:=' '; 
B[x+4,y+4]:=' '; 
B[x+4,y+5]:='/'; 
B[x+4,y+6]:='|'; 
B[x+5,y+2]:='+'; 
B[x+5,y+3]:='-'; 
B[x+5,y+4]:='-'; 
B[x+5,y+5]:='-'; 
B[x+5,y+6]:='+'; 
End; 
End; 
Procedure Oup; 
Var i,j:Longint; 
Begin 
For i:=MaxN downto 1 do 
Begin 
For j:=1 to MaxM do 
Write(b[i,j]); 
Writeln; 
End; 
End; 
Begin 
Inp; 
Main; 
Oup; 
End.