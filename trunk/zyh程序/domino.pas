Const Dmn:Array[1..8]of Longint=(%00000,%00011,%00110,%01100,%01111,%11000,%11011,%11110);
Type  Matrix=Array[0..31,0..31]of Longint;
Var N,M,P,I,J,K,Max:Longint;
F,G:Matrix;
Function Times(A,B:Matrix):Matrix;
Var I,J,K:Longint;
C:Matrix;
Begin
Fillchar(C,Sizeof(C),0);
For I:=0 to Max do
For J:=0 to Max do
For K:=0 to Max do
C[I,J]:=(C[I,J]+A[I,K]*B[K,J])Mod P;
Exit(C);
End;
Begin
Readln(N,M,P);
Max:=1 Shl M-1;
For I:=0 to Max do
For J:=0 to Max do
If((I Or J)=Max)Then
For K:=1 to 8 do
If((I And J)=Dmn[K])Then
Inc(G[I,J]);
fillchar(F,Sizeof(F),0);
For I:=0 to Max do
F[I,I]:=1;
While(N>0)do
Begin
if(N And 1>0)Then
F:=Times(F,G);
G:=Times(G,G);
n:=N Shr 1;
End;
Writeln(F[Max,Max] Mod P);
End. 