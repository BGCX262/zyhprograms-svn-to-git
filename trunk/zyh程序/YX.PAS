uses crt;
type
jk=record
name:string;
sm:longint;
gj:longint;
fy:longint;
dj:longint;
jy:longint;
end;
var
wo:record
name:string;
sm:longint;
gj:longint;
fy:longint;
mf:longint;
jb:longint;
jy:longint;
dj:longint;
end;
wb,ta:record
name:string;
sm:longint;
gj:longint;
fy:longint;
dj:longint;
jy:longint;
end;
gg:array[1..1000]of jk;
ch,sh,ah,c:char;i,g,x,y:longint;st1:string; f1,f2:text;
begin
writeln('�Ƿ���ϴδ���?');
readln(ch);
if ch='Y' then begin
write('�����ļ���:');
readln(st1);
assign(f1,st1);
reset(f1);
readln(f1,wo.name);
readln(f1,wo.sm);
readln(f1,wo.gj);
readln(f1,wo.fy);
readln(f1,wo.mf);
readln(f1,wo.jb);
readln(f1,wo.jy);
readln(f1,wo.dj);
readln(f1,g);
for i:=1 to g do
begin
readln(f1,gg[i].name);
readln(f1,gg[i].sm);
readln(f1,gg[i].gj);
readln(f1,gg[i].fy);
readln(f1,gg[i].dj);
end;
close(f1);
writeln('����:',wo.name);
writeln('����:',wo.sm);
writeln('����:',wo.gj);
writeln('����:',wo.fy);
writeln('ħ��:',wo.mf);
writeln('���:',wo. jb);
writeln('����:',wo.jy);
writeln('�ȼ�:',wo.dj);
delay(1000);
end;
if ch<>'Y' then begin
wo.jb:=0; wo.jy:=0; wo.dj:=1;
writeln('��ѡ��սʿ:');
delay(1000);
writeln('��ԯ------------x');
writeln('�����--------------w');
writeln('��̫��-----------s');
readln(ch);
case ch of
'x':begin wo.name:='��ԯ';wo.sm:=1900;wo.gj:=18;wo.fy:=24;wo.mf:=20;
writeln('����:',wo.name);
writeln('����:',wo.sm);
writeln('����:',wo.gj);
writeln('����:',wo.fy);
writeln('ħ��:',wo.mf);
writeln('���:',wo. jb);
writeln('����:',wo.jy);
writeln('�ȼ�:',wo.dj);
delay(1000);end;
'w':begin wo.name:='�����';wo.sm:=2200;wo.gj:=24;wo.fy:=18;wo.mf:=20;
writeln('����:',wo.name);
writeln('����:',wo.sm);
writeln('����:',wo.gj);
writeln('����:',wo.fy);
writeln('ħ��:',wo.mf);
writeln('���:',wo. jb);
writeln('����:',wo.jy);
writeln('�ȼ�:',wo.dj);
delay(1000);end;
's':begin wo.name:='��̫��';wo.sm:=1900;wo.gj:=20;wo.fy:=18;wo.mf:=24;
writeln('����:',wo.name);
writeln('����:',wo.sm);
writeln('����:',wo.gj);
writeln('����:',wo.fy);
writeln('ħ��:',wo.mf);
writeln('���:',wo. jb);
writeln('����:',wo.jy);
writeln('�ȼ�:',wo.dj);
delay(1000);end;
end;
end;
repeat
writeln('��Ҫȥ�Ķ�?');
writeln('ɭ��-----------s');
writeln('����------------z');
writeln('�Ǳ�----------c');
writeln('�ظ�--------------d');
writeln('����----------l');
writeln('�칬----------g');
writeln('��Ĺ------------m');
writeln('����------------x');
writeln('�̵�---------a');
writeln('������------f');
writeln('����ս��----------n');
writeln('�����̵�----------w');
writeln('��׽����----------b');
writeln('�����ﱳ��----------k');
writeln('�˳�------------t');
readln(ch);
case ch of
'n':
begin
randomize;
x:=random(9);
case x of
0:begin ta.name:='�������';ta.sm:=70;ta.gj:=47;ta.fy:=27;ta.dj:=1; end;
1:begin ta.name:='������';ta.sm:=100;ta.gj:=60;ta.fy:=50;ta.dj:=1; end;
2:begin ta.name:='˫����˹';ta.sm:=100;ta.gj:=50;ta.fy:=70;ta.dj:=1; end;
3:begin ta.name:='������';ta.sm:=130;ta.gj:=80;ta.fy:=60;ta.dj:=1; end;
4:begin ta.name:='Ҭ����';ta.sm:=100;ta.gj:=70;ta.fy:=50;ta.dj:=2; end;
5:begin ta.name:='С����';ta.sm:=150;ta.gj:=70;ta.fy:=20;ta.dj:=2; end;
6:begin ta.name:='�ɴ�Ѽ';ta.sm:=200;ta.gj:=100;ta.fy:=25;ta.dj:=2; end;
7:begin ta.name:='ŵ����';ta.sm:=700;ta.gj:=350;ta.fy:=300;ta.dj:=5; end;
8:begin ta.name:='����';ta.sm:=500;ta.gj:=270;ta.fy:=250;ta.dj:=3;end;
end;
writeln('����:',ta.name);
writeln('����:',ta.sm);
writeln('����:',ta.gj);
writeln('����:',ta.fy);
writeln('�ȼ�:',ta.dj);
writeln('��׽b,ɱ��s');
readln(c);
wb.name:=ta.name;wb.sm:=ta.sm;wb.gj:=ta.gj;wb.fy:=ta.fy;wb.dj:=ta.dj;
writeln('ѡ����˭?');
writeln('�����б�:');
for i:=1 to g do
writeln('����:',gg[i].name,' ','����:',gg[i].sm,' ','����:',gg[i].gj,' ','����:',gg[i].fy,' ','�ȼ�:',gg[i].dj);
readln(i);
while (ta.sm>0)and(gg[i].sm>0) do
begin
writeln('����:',ta.name);
writeln('����:',ta.sm);
writeln('����:',ta.gj);
writeln('����:',ta.fy);
writeln('�ȼ�:',ta.dj);
writeln('-------------------------');
delay(1000);
writeln('����:',gg[i].name);
writeln('����:',gg[i].sm);
writeln('����:',gg[i].gj);
writeln('����:',gg[i].fy);
writeln('����:',gg[i].jy);
writeln('�ȼ�:',gg[i].dj);
writeln('-------------------------');
writeln('����-------------g');
writeln('����-------------f');
writeln('����-------------t');
readln(sh);
if sh='g' then  ta.sm:=ta.sm-(abs(gg[i].gj-ta.fy)*2)div 4;
if sh='f' then gg[i].sm:=gg[i].sm-(abs(ta.gj-gg[i].fy)div 4)*2;
if sh='t' then begin randomize; x:=random(2); if x=1 then begin
writeln('���ܳɹ�!!'); break; end;
end;
gg[i].sm:=gg[i].sm-abs(ta.gj-gg[i].fy)*5*2;
end;
if (ta.sm<=0)and(c='b') then begin
inc(g);gg[g].name:=wb.name;gg[g].sm:=wb.sm;gg[g].gj:=wb.gj;gg[g].fy:=wb.fy;gg[g].dj:=wb.dj;
gg[i].jy:=gg[i].jy+ta.dj*ta.gj div 10;
wo.jb:=wo.jb+ta.dj*ta.gj div 7;
writeln('�����б�:');
for i:=1 to g do
writeln('����:',gg[i].name,' ','����:',gg[i].sm,' ','����:',gg[i].gj,' ','����:',gg[i].fy,' ','�ȼ�:',gg[i].dj);
end;
if (ta.sm<=0)and(c='s') then begin  gg[i].jy:=gg[i].jy+ta.dj*ta.gj div 10;
wo.jb:=wo.jb+ta.dj*ta.gj div 9;
end;
if gg[i].sm<=0 then writeln(gg[i].name,'����!');
end;
'k':begin
writeln('�����б�:');
for i:=1 to g do
writeln('����:',gg[i].name,' ','����:',gg[i].sm,' ','����:',gg[i].gj,' ','����:',gg[i].fy,' ','�ȼ�:',gg[i].dj);
end;
'w':begin
textbackground(yellow);
textcolor(red);
for i:=1 to g do
begin
if gg[i].jy>=50 then begin gg[i].dj:=gg[i].dj+gg[i].jy div 50;
gg[i].gj:=gg[i].gj+(gg[i].jy div 50*6);
gg[i].fy:=gg[i].fy+(gg[i].jy div 50*5);
gg[i].sm:=gg[i].sm+(gg[i].jy div 50*200);
gg[i].jy:=gg[i].jy mod 50;
end;
end;
writeln('�����б�:');
for i:=1 to g do
writeln('����:',gg[i].name,' ','����:',gg[i].sm,' ','����:',gg[i].gj,' ','����:',gg[i].fy,' ','�ȼ�:',gg[i].dj);
writeln('��Ҫ��ʲô?');
writeln('СѪƿ 12$ ������100--------------------p');
writeln('��Ѫƿ 40$ ������300--------------------x');
writeln('�� 20$ ������5--------------------------j');
writeln('�� 25$ ������7--------------------------g');
writeln('�� 15$ ������3--------------------------d');
writeln('�ƽ�� 30$ ������6----------------------h');
writeln('������ 50$ ����-------------------------w');
writeln('����֮ˮ 70$ ��.������5,����500------y');
readln(ah);
writeln('�����Ź�����?');
readln(i);
case ah of
'j':if wo.jb>=20 then begin gg[i].gj:=gg[i].gj+5;wo.jb:=wo.jb-20; end;
'd':if wo.jb>=15 then begin gg[i].fy:=gg[i].fy+3; wo.jb:=wo.jb-15; end;
'y':if wo.jb>=60 then begin gg[i].gj:=gg[i].gj+5;
gg[i].fy:=gg[i].fy+5;wo.jb:=wo.jb-50; end;
'x':if wo.jb>=40 then begin gg[i].sm:=gg[i].sm+300; wo.jb:=wo.jb-40; end;
'g':if wo.jb>=25 then begin gg[i].gj:=gg[i].gj+7;wo.jb:=wo.jb-25; end;
'p':if wo.jb>=12 then begin gg[i].sm:=gg[i].sm+100; wo.jb:=wo.jb-12; end;
'h':if wo.jb>=30 then begin gg[i].fy:=gg[i].fy+6; wo.jb:=wo.jb-30; end;
'w':if wo.jb>=50 then begin
gg[i].gj:=gg[i].gj+6;
gg[i].fy:=gg[i].fy+5;
gg[i].sm:=gg[i].sm+200;
wo.jb:=wo.jb-50;
gg[i].dj:=gg[i].dj+1;
end;
end;
end;
'b':begin
textbackground(white);
textcolor(yellow);
x:=random(10)+1;
case x of
1:begin ta.name:='��������';ta.sm:=100;ta.gj:=50;ta.fy:=40;ta.dj:=1;end;
2:begin ta.name:='Ƥ����';ta.sm:=200;ta.gj:=60;ta.fy:=55;ta.dj:=1;end;
3:begin ta.name:='�����';ta.sm:=250;ta.gj:=75;ta.fy:=66;ta.dj:=1;end;
4:begin ta.name:='С����';ta.sm:=320;ta.gj:=80;ta.fy:=70;ta.dj:=1;end;
5:begin ta.name:='ɳ����';ta.sm:=100;ta.gj:=30;ta.fy:=20;ta.dj:=1;end;
6:begin ta.name:='����';ta.sm:=400;ta.gj:=90;ta.fy:=90;ta.dj:=1;end;
7:begin ta.name:='ˮ����';ta.sm:=50;ta.gj:=20;ta.fy:=17;ta.dj:=1;end;
8:begin ta.name:='������';ta.sm:=90;ta.gj:=0;ta.fy:=20;ta.dj:=1;end;
9:begin ta.name:='���޻�';ta.sm:=800;ta.gj:=130;ta.fy:=120;ta.dj:=1;end;
10:begin ta.name:='�����';ta.sm:=1000;ta.gj:=200;ta.fy:=170;ta.dj:=1;end;
end;
wb.name:=ta.name;wb.sm:=ta.sm;wb.gj:=ta.gj;wb.fy:=ta.fy;wb.dj:=ta.dj;
while (ta.sm>0)and(wo.sm>0) do
begin
writeln('����:',ta.name);
writeln('����:',ta.sm);
writeln('����:',ta.gj);
writeln('����:',ta.fy);
writeln('�ȼ�:',ta.dj);
writeln('-------------------------');
delay(1000);
writeln('����:',wo.name);
writeln('����:',wo.sm);
writeln('����:',wo.gj);
writeln('����:',wo.fy);
writeln('ħ��:',wo.mf);
writeln('���:',wo. jb);
writeln('����:',wo.jy);
writeln('�ȼ�:',wo.dj);
writeln('-------------------------');
writeln('����-------------g');
writeln('����-------------f');
writeln('ħ��---------------m');
writeln('����-------------t');
readln(sh);
case sh of
'g': ta.sm:=ta.sm-(abs(wo.gj-ta.fy)*2)div 4;
'f':wo.sm:=wo.sm-(abs(ta.gj-wo.fy)div 4)*2;
'm': if wo.mf<=0 then wo.mf:=0 else begin ta.sm:=ta.sm-((wo.gj+wo.fy)*2+10)div 4; wo.mf:=wo.mf-4;
end;
't': begin randomize; x:=random(2); if x=1 then begin
writeln('���ܳɹ�!!'); break; end else begin
writeln('����ʧ��!'); wo.sm:=wo.sm-abs(ta.gj-wo.fy)*2; end;
end;
end;
if ta.sm<=0 then begin inc(g);gg[g].name:=wb.name;gg[g].sm:=wb.sm;gg[g].gj:=wb.gj;gg[g].fy:=wb.fy;gg

[g].dj:=wb.dj;
writeln('�����б�:');
for i:=1 to g do
writeln('����:',gg[i].name,' ','����:',gg[i].sm,' ','����:',gg[i].gj,' ','����:',gg[i].fy,' ','�ȼ�:',gg[i].dj);
end
else
if wo.sm<=0 then begin writeln('�����!'); delay(1000); exit; end else
wo.sm:=wo.sm-abs(ta.gj-wo.fy)*4 div 3*5;
end;
end;
's':begin
textbackground(green);
textcolor(white);
randomize;
x:=random(8);
case x of
0:begin ta.name:='����';ta.sm:=35;ta.gj:=17;ta.fy:=7;ta.dj:=1; end;
1:begin ta.name:='ʳ�˻�';ta.sm:=40;ta.gj:=20;ta.fy:=5;ta.dj:=1; end;
2:begin ta.name:='��������';ta.sm:=50;ta.gj:=30;ta.fy:=10;ta.dj:=2; end;
3:begin ta.name:='�߾�';ta.sm:=70;ta.gj:=35;ta.fy:=13;ta.dj:=2; end;
4:begin ta.name:='Ұ��';ta.sm:=100;ta.gj:=50;ta.fy:=10;ta.dj:=3; end;
5:begin ta.name:='ʨ��';ta.sm:=150;ta.gj:=70;ta.fy:=20;ta.dj:=3; end;
6:begin ta.name:='�ϻ�';ta.sm:=200;ta.gj:=100;ta.fy:=25;ta.dj:=4; end;
7:begin ta.name:='ɽ��';ta.sm:=250;ta.gj:=150;ta.fy:=30;ta.dj:=5; end;
end;
while (ta.sm>0)and(wo.sm>0) do
begin
writeln('����:',ta.name);
writeln('����:',ta.sm);
writeln('����:',ta.gj);
writeln('����:',ta.fy);
writeln('�ȼ�:',ta.dj);
writeln('-------------------------');
delay(1000);
writeln('����:',wo.name);
writeln('����:',wo.sm);
writeln('����:',wo.gj);
writeln('����:',wo.fy);
writeln('ħ��:',wo.mf);
writeln('���:',wo. jb);
writeln('����:',wo.jy);
writeln('�ȼ�:',wo.dj);
writeln('-------------------------');
writeln('����-------------g');
writeln('����-------------f');
writeln('ħ��---------------m');
writeln('����-------------t');
readln(sh);
case sh of
'g': ta.sm:=ta.sm-(abs(wo.gj-ta.fy)*2);
'f':wo.sm:=wo.sm-(abs(ta.gj-wo.fy)div 4);
'm': if wo.mf<=0 then wo.mf:=0 else begin ta.sm:=ta.sm-((wo.gj+wo.fy)*2+10)div 2; wo.mf:=wo.mf-4;
end;
't': begin randomize; x:=random(2); if x=1 then begin
writeln('���ܳɹ�!!'); break; end else begin
writeln('����ʧ��!'); wo.sm:=wo.sm-abs(ta.gj-wo.fy); end;
end;
end;
if ta.sm<=0 then
begin
delay(1000); wo.jb:=wo.jb+(ta.gj+ta.fy)div (ta.dj*2);
wo.jy:=wo.jy+(ta.gj+ta.fy)div (ta.dj*3);
if ta.name='�߾�' then begin writeln('�������ߵ�!������200');
wo.sm:=wo.sm+200; end;
if ta.name='Ұ��' then begin writeln('��������Ƥ!������5');
wo.fy:=wo.fy+5; end;
if ta.name='����' then begin writeln('�����˲�ҩ!������100');
wo.sm:=wo.sm+100; end;
if ta.name='ʳ�˻�' then begin writeln('�����˻�¶!������3');
wo.gj:=wo.gj+3; end;
if ta.name='��������' then begin writeln('��������Ƥ!������4');
wo.fy:=wo.fy+4; end;
if ta.name='ʨ��' then begin writeln('������ʨͷ!ħ����8');
wo.mf:=wo.mf+8; end;
if ta.name='�ϻ�' then begin writeln('�����˻���!������10');
wo.gj:=wo.gj+10; end;
if ta.name='ɽ��' then begin writeln('���������!ħ����12');
wo.mf:=wo.mf+12; end;
delay(1000);
writeln('����:',wo.name);
writeln('����:',wo.sm);
writeln('����:',wo.gj);
writeln('����:',wo.fy);
writeln('ħ��:',wo.mf);
writeln('���:',wo. jb);
writeln('����:',wo.jy);
writeln('�ȼ�:',wo.dj);
writeln('-------------------------');
end else
if wo.sm<=0 then begin writeln('�����!'); delay(1000); exit; end else
wo.sm:=wo.sm-abs(ta.gj-wo.fy)*4 div 3;
end;
writeln('ʤ��!');
end;
't':begin
writeln('�Ƿ񱣴�?');
readln(ch);
if ch='Y' then
begin
writeln('���뱣���ļ���:');
readln(st1);
assign(f2,st1);
rewrite(f2);
writeln(f2,wo.name);
writeln(f2,wo.sm);
writeln(f2,wo.gj);
writeln(f2,wo.fy);
writeln(f2,wo.mf);
writeln(f2,wo.jb);
writeln(f2,wo.jy);
writeln(f2,wo.dj);
writeln(f2,g);
for i:=1 to g do
begin
writeln(f2,gg[i].name);
writeln(f2,gg[i].sm);
writeln(f2,gg[i].gj);
writeln(f2,gg[i].fy);
writeln(f2,gg[i].dj);
end;
close(f2);
end;
exit;
end;
'a':begin
textbackground(yellow);
textcolor(red);
if wo.jy>=50 then begin wo.dj:=wo.dj+wo.jy div 50;
wo.gj:=wo.gj+(wo.jy div 50*6);
wo.fy:=wo.fy+(wo.jy div 50*5);
wo.mf:=wo.mf+(wo.jy div 50*4);
wo.jb:=wo.jb+(wo.jy div 50*10);
wo.sm:=wo.sm+(wo.jy div 50*200);
wo.jy:=wo.jy mod 50;
writeln('����:',wo.name);
writeln('����:',wo.sm);
writeln('����:',wo.gj);
writeln('����:',wo.fy);
writeln('ħ��:',wo.mf);
writeln('���:',wo. jb);
writeln('����:',wo.jy);
writeln('�ȼ�:',wo.dj);
writeln('-------------------------');
end;
writeln('��Ҫ��ʲô?');
writeln('СѪƿ 12$ ������100--------------------p');
writeln('��Ѫƿ 40$ ������300--------------------x');
writeln('�� 20$ ������5--------------------------j');
writeln('�� 25$ ������7--------------------------g');
writeln('�� 15$ ������3--------------------------d');
writeln('�ƽ�� 30$ ������6----------------------h');
writeln('ˮ���� 30$ ħ����8----------------------s');
writeln('������ 50$ ����-------------------------w');
writeln('����֮ˮ 70$ ħ.��.������5,����500------y');
writeln('����ҩ�� 3000$ а��ʧЧ-----------------t');
writeln('�ɱ��� 4000$ ħ.��.��.������2-----------c');
readln(ah);
case ah of
'j':if wo.jb>=20 then begin wo.gj:=wo.gj+5; wo.jb:=wo.jb-20; end;
'd':if wo.jb>=15 then begin wo.fy:=wo.fy+3; wo.jb:=wo.jb-15; end;
's':if wo.jb>=30 then begin wo.mf:=wo.mf+8; wo.jb:=wo.jb-30; end;
'y':if wo.jb>=60 then begin wo.gj:=wo.gj+5;
wo.fy:=wo.fy+5;wo.mf:=wo.mf+5;wo.jb:=wo.jb-50; end;
'x':if wo.jb>=40 then begin wo.sm:=wo.sm+300; wo.jb:=wo.jb-40; end;
'g':if wo.jb>=25 then begin wo.gj:=wo.gj+7;wo.jb:=wo.jb-25; end;
'p':if wo.jb>=12 then begin wo.sm:=wo.sm+100; wo.jb:=wo.jb-12; end;
'h':if wo.jb>=30 then begin wo.fy:=wo.fy+6; wo.jb:=wo.jb-30; end;
'c':if wo.jb>=4000 then begin wo.sm:=wo.sm*2;wo.gj:=wo.gj*2;wo.fy:=wo.fy*2;wo.mf:=wo.mf*2;wo.jb:=wo.jb-4000;end;
'w':if wo.jb>=50 then begin
wo.gj:=wo.gj+6;
wo.fy:=wo.fy+5;
wo.mf:=wo.mf+4;
wo.sm:=wo.sm+200;
wo.jb:=wo.jb-50;
wo.dj:=wo.dj+1;
end;
't':if wo.jb>=2000 then begin y:=1; wo.jb:=wo.jb-2000; end;
end;
if (wo.dj>=100)and(wo.name='�����')or(wo.dj>=200)and(wo.name='��սʿ') then
if wo.name='�����' then begin
wo.name:='��սʿ';
wo.sm:=wo.sm+wo.sm div 2;
wo.gj:=wo.gj+wo.gj div 3;
wo.fy:=wo.fy+wo.fy div 3;
wo.mf:=wo.mf+wo.mf div 3;
wo.jb:=wo.jb*2;
end else
begin
wo.name:='ս��';
wo.sm:=wo.sm+wo.sm div 2;
wo.gj:=wo.gj+wo.gj div 3;
wo.fy:=wo.fy+wo.fy div 3;
wo.mf:=wo.mf+wo.mf div 3;
wo.jb:=wo.jb*2;
end;
if (wo.name='��ԯ')and(wo.dj>=100)or(wo.name='����')and(wo.dj>=200) then
if wo.name='��ԯ' then begin
wo.name:='����';
wo.sm:=wo.sm+wo.sm div 2;
wo.gj:=wo.gj+wo.gj div 3;
wo.fy:=wo.fy+wo.fy div 3;
wo.mf:=wo.mf+wo.mf div 3;
wo.jb:=wo.jb*2; end else
begin
wo.name:='��սʿ';
wo.sm:=wo.sm+wo.sm div 2;
wo.gj:=wo.gj+wo.gj div 3;
wo.fy:=wo.fy+wo.fy div 3;
wo.mf:=wo.mf+wo.mf div 3;
wo.jb:=wo.jb*2; end;
if (wo.name='��̫��')and(wo.dj>=100)or(wo.name='��̫��')and(wo.dj>=200) then
if wo.name='��̫��' then begin
wo.name:='��̫��';
wo.sm:=wo.sm+wo.sm div 2;
wo.gj:=wo.gj+wo.gj div 3;
wo.fy:=wo.fy+wo.fy div 3;
wo.mf:=wo.mf+wo.mf div 3;
wo.jb:=wo.jb*2; end else
begin
wo.name:='����������';
wo.sm:=wo.sm+wo.sm div 2;
wo.gj:=wo.gj+wo.gj div 3;
wo.fy:=wo.fy+wo.fy div 3;
wo.mf:=wo.mf+wo.mf div 3;
wo.jb:=wo.jb*2; end;
delay(1000);
writeln('����:',wo.name);
writeln('����:',wo.sm);
writeln('����:',wo.gj);
writeln('����:',wo.fy);
writeln('ħ��:',wo.mf);
writeln('���:',wo. jb);
writeln('����:',wo.jy);
writeln('�ȼ�:',wo.dj);
writeln('-------------------------');
end;
'z':begin
textbackground(black);
textcolor(yellow);
randomize;
x:=random(8);
case x of
0:begin ta.name:='�����';ta.sm:=80;ta.gj:=30;ta.fy:=25;ta.dj:=3; end;
1:begin ta.name:='����ˮ��';ta.sm:=100;ta.gj:=30;ta.fy:=30;ta.dj:=3; end;
2:begin ta.name:='����ʿ��';ta.sm:=150;ta.gj:=35;ta.fy:=35;ta.dj:=4; end;
3:begin ta.name:='����ӳ�';ta.sm:=200;ta.gj:=50;ta.fy:=50;ta.dj:=5; end;
4:begin ta.name:='��������';ta.sm:=300;ta.gj:=70;ta.fy:=60;ta.dj:=6; end;
5:begin ta.name:='������ʿ';ta.sm:=400;ta.gj:=100;ta.fy:=80;ta.dj:=7; end;
6:begin ta.name:='����ħ��';ta.sm:=500;ta.gj:=130;ta.fy:=100;ta.dj:=7; end;
7:begin ta.name:='����֮��';ta.sm:=600;ta.gj:=150;ta.fy:=130;ta.dj:=8; end;
end;
while (ta.sm>0)and(wo.sm>0) do
begin
writeln('����:',ta.name);
writeln('����:',ta.sm);
writeln('����:',ta.gj);
writeln('����:',ta.fy);
writeln('�ȼ�:',ta.dj);
writeln('-------------------------');
delay(1000);
writeln('����:',wo.name);
writeln('����:',wo.sm);
writeln('����:',wo.gj);
writeln('����:',wo.fy);
writeln('ħ��:',wo.mf);
writeln('���:',wo. jb);
writeln('����:',wo.jy);
writeln('�ȼ�:',wo.dj);
writeln('-------------------------');
writeln('����-------------g');
writeln('����-------------f');
writeln('ħ��---------------m');
writeln('����-------------t');
readln(sh);
case sh of
'g': begin ta.sm:=ta.sm-(abs(wo.gj-ta.fy)*2); if ta.name='����ˮ��' then
begin wo.sm:=wo.sm-30;ta.sm:=ta.sm+30;end;end;
'f':wo.sm:=wo.sm-(abs(ta.gj-wo.fy)div 4);
'm':begin if wo.mf<=0 then wo.mf:=0 else begin ta.sm:=ta.sm-((wo.gj+ta.fy)*2+10)div 2; wo.mf:=wo.mf-4;
end;if ta.name='����ˮ��' then
begin wo.sm:=wo.sm-30;ta.sm:=ta.sm+30;end; end;
't': begin randomize; x:=random(2); if x=1 then begin
writeln('���ܳɹ�!!'); break; end else begin
writeln('����ʧ��!'); wo.sm:=wo.sm-abs(ta.gj-wo.fy); end;
end;
end;
if ta.sm<=0 then
begin
delay(1000); wo.jb:=wo.jb+(ta.gj+ta.fy)div (ta.dj*2);
wo.jy:=wo.jy+(ta.gj+ta.fy)div (ta.dj*3);
if ta.name='�����' then begin writeln('����������!������4');
wo.fy:=wo.fy+4; end;
if ta.name='����ˮ��' then begin writeln('��������ˮ!ħ����8');
wo.mf:=wo.mf+8; end;
if ta.name='����ʿ��' then begin writeln('������ǹ!������5');
wo.gj:=wo.gj+5; end;
if ta.name='����ħ��' then begin writeln('�������ཬ!������7');
wo.gj:=wo.gj+7; end;
if ta.name='����ӳ�' then begin writeln('�����˶�!������6');
wo.fy:=wo.fy+6; end;
if ta.name='��������' then begin writeln('������Ѫ��!������300');
wo.sm:=wo.sm+300; end;
if ta.name='������ʿ' then begin writeln('������������!ħ����16');
wo.mf:=wo.mf+16; end;
if ta.name='����֮��' then begin writeln('������������֥!������500');
wo.sm:=wo.sm+500; end;
delay(1000);
writeln('����:',wo.name);
writeln('����:',wo.sm);
writeln('����:',wo.gj);
writeln('����:',wo.fy);
writeln('ħ��:',wo.mf);
writeln('���:',wo. jb);
writeln('����:',wo.jy);
writeln('�ȼ�:',wo.dj);
writeln('-------------------------');
end else
if wo.sm<=0 then begin writeln('�����!'); delay(1000); exit; end else
wo.sm:=wo.sm-abs(ta.gj-wo.fy)*4 div 3;
end;
writeln('ʤ��!');
end;
'c':begin
textbackground(white);
textcolor(black);
randomize;
x:=random(10);
case x of
0:begin ta.name:='����ʿ��';ta.sm:=100;ta.gj:=40;ta.fy:=40;ta.dj:=4; end;
1:begin ta.name:='�м�ʿ��';ta.sm:=150;ta.gj:=50;ta.fy:=30;ta.dj:=4; end;
2:begin ta.name:='�߼�ʿ��';ta.sm:=200;ta.gj:=100;ta.fy:=70;ta.dj:=5; end;
3:begin ta.name:='�ռ�ʿ��';ta.sm:=300;ta.gj:=130;ta.fy:=100;ta.dj:=6; end;
4:begin ta.name:='������ʿ';ta.sm:=500;ta.gj:=200;ta.fy:=170;ta.dj:=7; end;
5:begin ta.name:='������ʿ';ta.sm:=1000;ta.gj:=500;ta.fy:=300;ta.dj:=8; end;
6:begin ta.name:='������ʿ';ta.sm:=2000;ta.gj:=700;ta.fy:=500;ta.dj:=9; end;
7:begin ta.name:='������ʿ';ta.sm:=2500;ta.gj:=1000;ta.fy:=700;ta.dj:=10; end;
8:begin ta.name:='��ʿ�ӳ�';ta.sm:=3000;ta.gj:=2000;ta.fy:=1000;ta.dj:=11; end;
9:begin ta.name:='��ڤ����';ta.sm:=4000;ta.gj:=2500;ta.fy:=2000;ta.dj:=12; end;
end;
while (ta.sm>0)and(wo.sm>0) do
begin
writeln('����:',ta.name);
writeln('����:',ta.sm);
writeln('����:',ta.gj);
writeln('����:',ta.fy);
writeln('�ȼ�:',ta.dj);
writeln('-------------------------');
delay(1000);
writeln('����:',wo.name);
writeln('����:',wo.sm);
writeln('����:',wo.gj);
writeln('����:',wo.fy);
writeln('ħ��:',wo.mf);
writeln('���:',wo. jb);
writeln('����:',wo.jy);
writeln('�ȼ�:',wo.dj);
writeln('-------------------------');
writeln('����-------------g');
writeln('����-------------f');
writeln('ħ��---------------m');
writeln('����-------------t');
readln(sh);
case sh of
'g': ta.sm:=ta.sm-(abs(wo.gj-ta.fy)*2);
'f':wo.sm:=wo.sm-(abs(ta.gj-wo.fy)div 4);
'm':begin if wo.mf<=0 then wo.mf:=0 else begin ta.sm:=ta.sm-((wo.gj+ta.fy)*2+10)div 2; wo.mf:=wo.mf-4;
end;end;
't': begin randomize; x:=random(2); if x=1 then begin
writeln('���ܳɹ�!!'); break; end else begin
writeln('����ʧ��!'); wo.sm:=wo.sm-abs(ta.gj-wo.fy); end;
end;
end;
if ta.sm<=0 then
begin
delay(1000); wo.jb:=wo.jb+(ta.gj+ta.fy)div (ta.dj+ta.dj);
wo.jy:=wo.jy+(ta.gj+ta.fy)div (ta.dj*3);
if ta.name='��ʿ�ӳ�' then begin writeln('�����˱���!������30');
wo.gj:=wo.gj+15; end;
if ta.name='��ڤ����' then begin writeln('����������!������1000');
wo.sm:=wo.sm+1000;
end;
delay(1000);
writeln('����:',wo.name);
writeln('����:',wo.sm);
writeln('����:',wo.gj);
writeln('����:',wo.fy);
writeln('ħ��:',wo.mf);
writeln('���:',wo. jb);
writeln('����:',wo.jy);
writeln('�ȼ�:',wo.dj);
writeln('-------------------------');
end else
if wo.sm<=0 then begin writeln('�����!'); delay(1000); exit; end else
wo.sm:=wo.sm-abs(ta.gj-wo.fy)*4 div 3;
end;
writeln('ʤ��');
end;
'd':begin
textbackground(blue);
textcolor(green);
randomize;
x:=random(9);
case x of
0:begin ta.name:='����ʹ��';ta.sm:=500;ta.gj:=200;ta.fy:=100;ta.dj:=7; end;
1:begin ta.name:='����սʿ';ta.sm:=600;ta.gj:=250;ta.fy:=150;ta.dj:=7; end;
2:begin ta.name:='ţͷ';ta.sm:=1000;ta.gj:=500;ta.fy:=300;ta.dj:=8; end;
3:begin ta.name:='����';ta.sm:=1500;ta.gj:=1000;ta.fy:=500;ta.dj:=8; end;
4:begin ta.name:='����';ta.sm:=2000;ta.gj:=1500;ta.fy:=1000;ta.dj:=9; end;
5:begin ta.name:='�ظ���ʦ';ta.sm:=3000;ta.gj:=2000;ta.fy:=1500;ta.dj:=10; end;
6:begin ta.name:='�ظ��й�';ta.sm:=4000;ta.gj:=3000;ta.fy:=2000;ta.dj:=11; end;
7:begin ta.name:='����ү';ta.sm:=5000;ta.gj:=3500;ta.fy:=2500;ta.dj:=12; end;
8:begin ta.name:='�ز�����';ta.sm:=10000;ta.gj:=5000;ta.fy:=4000;ta.dj:=13; end;
end;
while (ta.sm>0)and(wo.sm>0) do
begin
writeln('����:',ta.name);
writeln('����:',ta.sm);
writeln('����:',ta.gj);
writeln('����:',ta.fy);
writeln('�ȼ�:',ta.dj);
writeln('-------------------------');
delay(1000);
writeln('����:',wo.name);
writeln('����:',wo.sm);
writeln('����:',wo.gj);
writeln('����:',wo.fy);
writeln('ħ��:',wo.mf);
writeln('���:',wo. jb);
writeln('����:',wo.jy);
writeln('�ȼ�:',wo.dj);
writeln('-------------------------');
writeln('����-------------g');
writeln('����-------------f');
writeln('ħ��---------------m');
writeln('����-------------t');
readln(sh);
case sh of
'g': ta.sm:=ta.sm-(abs(wo.gj-ta.fy)*2);
'f':wo.sm:=wo.sm-(abs(ta.gj-wo.fy)div 4);
'm':begin if wo.mf<=0 then wo.mf:=0 else begin ta.sm:=ta.sm-(((wo.gj+ta.fy)*2+10)div 2); wo.mf:=wo.mf-4;
end;end;
't': begin randomize; x:=random(2); if x=1 then begin
writeln('���ܳɹ�!!'); break; end else begin
writeln('����ʧ��!'); wo.sm:=wo.sm-abs(ta.gj-wo.fy); end;
end;
end;
if ta.sm<=0 then
begin
delay(500); wo.jb:=wo.jb+(ta.gj+ta.fy)div (ta.dj+ta.dj);
wo.jy:=wo.jy+(ta.gj+ta.fy)div (ta.dj*3);
if ta.name='ţͷ' then begin writeln('������ţ��!������20');
wo.gj:=wo.gj+20; end;
if ta.name='����' then begin writeln('����������!������20');
wo.fy:=wo.fy+20;
end;
delay(1000);
writeln('����:',wo.name);
writeln('����:',wo.sm);
writeln('����:',wo.gj);
writeln('����:',wo.fy);
writeln('ħ��:',wo.mf);
writeln('���:',wo. jb);
writeln('����:',wo.jy);
writeln('�ȼ�:',wo.dj);
writeln('-------------------------');
end else
if wo.sm<=0 then begin writeln('�����!'); delay(1000); exit; end else
wo.sm:=wo.sm-abs(ta.gj-wo.fy)*4 div 3;
end;
writeln('ʤ��!');
end;
'l':begin
textbackground(blue);
textcolor(yellow);
randomize;
x:=random(9);
case x of
0:begin ta.name:='����';ta.sm:=1000;ta.gj:=500;ta.fy:=700;ta.dj:=10; end;
1:begin ta.name:='����';ta.sm:=2000;ta.gj:=1000;ta.fy:=700;ta.dj:=10; end;
2:begin ta.name:='Ϻ��';ta.sm:=3500;ta.gj:=2000;ta.fy:=1000;ta.dj:=11; end;
3:begin ta.name:='з��';ta.sm:=5000;ta.gj:=3000;ta.fy:=2000;ta.dj:=11; end;
4:begin ta.name:='ǧ���Ϲ�';ta.sm:=10000;ta.gj:=5000;ta.fy:=3000;ta.dj:=13; end;
5:begin ta.name:='�����Ϲ�';ta.sm:=15000;ta.gj:=10000;ta.fy:=5000;ta.dj:=20; end;
6:begin ta.name:='����';ta.sm:=20000;ta.gj:=12000;ta.fy:=10000;ta.dj:=23; end;
7:begin ta.name:='����';ta.sm:=30000;ta.gj:=15000;ta.fy:=14000;ta.dj:=25; end;
8:begin ta.name:='����';ta.sm:=100000;ta.gj:=50000;ta.fy:=40000;ta.dj:=50; end;
end;
while (ta.sm>0)and(wo.sm>0) do
begin
writeln('����:',ta.name);
writeln('����:',ta.sm);
writeln('����:',ta.gj);
writeln('����:',ta.fy);
writeln('�ȼ�:',ta.dj);
writeln('-------------------------');
delay(1000);
writeln('����:',wo.name);
writeln('����:',wo.sm);
writeln('����:',wo.gj);
writeln('����:',wo.fy);
writeln('ħ��:',wo.mf);
writeln('���:',wo. jb);
writeln('����:',wo.jy);
writeln('�ȼ�:',wo.dj);
writeln('-------------------------');
writeln('����-------------g');
writeln('����-------------f');
writeln('ħ��---------------m');
writeln('����-------------t');
readln(sh);
case sh of
'g': ta.sm:=ta.sm-(abs(wo.gj-ta.fy)*2);
'f':wo.sm:=wo.sm-(abs(ta.gj-wo.fy)div 4);
'm':begin if wo.mf<=0 then wo.mf:=0 else begin ta.sm:=ta.sm-(((wo.gj+ta.fy)*2+10)div 2); wo.mf:=wo.mf-4;
end;end;
't': begin randomize; x:=random(2); if x=1 then begin
writeln('���ܳɹ�!!'); break; end else begin
writeln('����ʧ��!'); wo.sm:=wo.sm-abs(ta.gj-wo.fy); end;
end;
end;
if ta.sm<=0 then
begin
delay(500); wo.jb:=wo.jb+(ta.gj+ta.fy)div (ta.dj+ta.dj );
wo.jy:=wo.jy+(ta.gj+ta.fy)div (ta.dj*3);
if ta.name='Ϻ��' then begin writeln('������Ϻ��!������50');
wo.gj:=wo.gj+50; end;
if ta.name='з��' then begin writeln('������з��!������40');
wo.fy:=wo.fy+40;
end;
delay(1000);
writeln('����:',wo.name);
writeln('����:',wo.sm);
writeln('����:',wo.gj);
writeln('����:',wo.fy);
writeln('ħ��:',wo.mf);
writeln('���:',wo. jb);
writeln('����:',wo.jy);
writeln('�ȼ�:',wo.dj);
writeln('-------------------------');
end else
if wo.sm<=0 then begin writeln('�����!'); delay(1000); exit; end else
wo.sm:=wo.sm-abs(ta.gj-wo.fy)*4 div 3;
end;
writeln('ʤ��!');
end;
'f':begin
textbackground(red);
textcolor(black);
writeln('��Ҫ��ʲô��?');
writeln('���� 150$ ������50-------------t');
writeln('ͭ�� 450$ ������150------------d');
writeln('���ⵤ 300$ ������100----------b');
writeln('���� 450$ ������150------------y');
writeln('�� 700$ ������ 300-----------j');
writeln('�ϳ��� 400$ ������ 1000--------h');
readln(ch);
case ch of
't':if wo.jb>=150 then begin wo.fy:=wo.fy+50; wo.jb:=wo.jb-150; end;
'd':if wo.jb>=450 then begin wo.fy:=wo.fy+150; wo.jb:=wo.jb-450; end;
'b':if wo.jb>=300 then begin wo.gj:=wo.gj+100; wo.jb:=wo.jb-300; end;
'y':if wo.jb>=450 then begin wo.gj:=wo.gj+150; wo.jb:=wo.jb-450; end;
'j':if wo.jb>=700 then begin wo.gj:=wo.gj+300; wo.jb:=wo.jb-700; end;
'h':if wo.jb>=400 then begin wo.gj:=wo.gj+1000; wo.jb:=wo.jb-400; end;
end;
writeln('����:',wo.name);
writeln('����:',wo.sm);
writeln('����:',wo.gj);
writeln('����:',wo.fy);
writeln('ħ��:',wo.mf);
writeln('���:',wo. jb);
writeln('����:',wo.jy);
writeln('�ȼ�:',wo.dj);
writeln('-------------------------');
end;
'g':begin
textbackground(blue);
textcolor(white);
randomize;
x:=random(9);
case x of
0:begin ta.name:='����';ta.sm:=5000;ta.gj:=500;ta.fy:=700;ta.dj:=20; end;
1:begin ta.name:='ľ��';ta.sm:=10000;ta.gj:=1000;ta.fy:=700;ta.dj:=25; end;
2:begin ta.name:='ˮ��';ta.sm:=20000;ta.gj:=2000;ta.fy:=1000;ta.dj:=11; end;
3:begin ta.name:='����';ta.sm:=25000;ta.gj:=3000;ta.fy:=2000;ta.dj:=11; end;
4:begin ta.name:='����';ta.sm:=30000;ta.gj:=5000;ta.fy:=3000;ta.dj:=13; end;
5:begin ta.name:='������';ta.sm:=50000;ta.gj:=10000;ta.fy:=5000;ta.dj:=20; end;
6:begin ta.name:='�������A';ta.sm:=100000;ta.gj:=12000;ta.fy:=10000;ta.dj:=23; end;
7:begin ta.name:='�������B';ta.sm:=200000;ta.gj:=15000;ta.fy:=14000;ta.dj:=25; end;
8:begin ta.name:='���';ta.sm:=500000;ta.gj:=100000;ta.fy:=200000;ta.dj:=100; end;
end;
while (ta.sm>0)and(wo.sm>0) do
begin
writeln('����:',ta.name);
writeln('����:',ta.sm);
writeln('����:',ta.gj);
writeln('����:',ta.fy);
writeln('�ȼ�:',ta.dj);
writeln('-------------------------');
delay(1000);
writeln('����:',wo.name);
writeln('����:',wo.sm);
writeln('����:',wo.gj);
writeln('����:',wo.fy);
writeln('ħ��:',wo.mf);
writeln('���:',wo. jb);
writeln('����:',wo.jy);
writeln('�ȼ�:',wo.dj);
writeln('-------------------------');
writeln('����-------------g');
writeln('����-------------f');
writeln('ħ��---------------m');
writeln('����-------------t');
readln(sh);
case sh of
'g': ta.sm:=ta.sm-(abs(wo.gj-ta.fy)*2);
'f':wo.sm:=wo.sm-(abs(ta.gj-wo.fy)div 4);
'm':begin if wo.mf<=0 then wo.mf:=0 else begin ta.sm:=ta.sm-(((wo.gj+ta.fy)*2+10)div 2); wo.mf:=wo.mf-4;
end;end;
't': begin randomize; x:=random(2); if x=1 then begin
writeln('���ܳɹ�!!'); break; end else begin
writeln('����ʧ��!'); wo.sm:=wo.sm-abs(ta.gj-wo.fy); end;
end;
end;
if ta.sm<=0 then
begin
delay(1000); wo.jb:=wo.jb+(ta.gj+ta.fy)div (ta.dj+ta.dj );
wo.jy:=wo.jy+(ta.gj+ta.fy)div (ta.dj*3);
if ta.name='�������A' then begin writeln('�����˲�!������70');
wo.gj:=wo.gj+50; end;
if ta.name='�������B' then begin writeln('�����˶�!������100');
wo.fy:=wo.fy+40;
end;
delay(1000);
writeln('����:',wo.name);
writeln('����:',wo.sm);
writeln('����:',wo.gj);
writeln('����:',wo.fy);
writeln('ħ��:',wo.mf);
writeln('���:',wo. jb);
writeln('����:',wo.jy);
writeln('�ȼ�:',wo.dj);
writeln('-------------------------');
end else
if wo.sm<=0 then begin writeln('�����!'); delay(1000); exit; end else
wo.sm:=wo.sm-abs(ta.gj-wo.fy)*4 div 3;
end;
writeln('ʤ��!');
end;
'm':begin
textbackground(black);
textcolor(green);
randomize;
x:=random(9);
case x of
0:begin ta.name:='����2';ta.sm:=10000;ta.gj:=5000;ta.fy:=2500;ta.dj:=100; end;
1:begin ta.name:='�ػ�A';ta.sm:=50000;ta.gj:=10000;ta.fy:=5000;ta.dj:=200; end;
2:begin ta.name:='�ػ�B';ta.sm:=50000;ta.gj:=5000;ta.fy:=10000;ta.dj:=400; end;
3:begin ta.name:='��Ĺ����';ta.sm:=100000;ta.gj:=30000;ta.fy:=20000;ta.dj:=800; end;
4:begin ta.name:='��Ĺ��';ta.sm:=150000;ta.gj:=40000;ta.fy:=30000;ta.dj:=1600; end;
5:begin ta.name:='ħ���ͷ1';ta.sm:=200000;ta.gj:=60000;ta.fy:=5000;ta.dj:=3200; end;
6:begin ta.name:='ħ���ͷ2';ta.sm:=400000;ta.gj:=120000;ta.fy:=10000;ta.dj:=6400; end;
7:begin ta.name:='ħ���ͷ3';ta.sm:=800000;ta.gj:=24000;ta.fy:=20000;ta.dj:=12800; end;
8:begin ta.name:='а��';if y=1 then begin
ta.sm:=2000000; ta.gj:=500000;ta.fy:=300000; end else begin
ta.sm:=wo.sm*2;ta.gj:=wo.fy+wo.sm;ta.fy:=wo.gj+1;ta.dj:=33600; end;
end;
end;
while (ta.sm>0)and(wo.sm>0) do
begin
writeln('����:',ta.name);
writeln('����:',ta.sm);
writeln('����:',ta.gj);
writeln('����:',ta.fy);
writeln('�ȼ�:',ta.dj);
writeln('-------------------------');
delay(1000);
writeln('����:',wo.name);
writeln('����:',wo.sm);
writeln('����:',wo.gj);
writeln('����:',wo.fy);
writeln('ħ��:',wo.mf);
writeln('���:',wo. jb);
writeln('����:',wo.jy);
writeln('�ȼ�:',wo.dj);
writeln('-------------------------');
writeln('����-------------g');
writeln('����-------------f');
writeln('ħ��---------------m');
writeln('����-------------t');
readln(sh);
case sh of
'g': if ta.name<>'а��' then ta.sm:=ta.sm-(abs(wo.gj-ta.fy)*2);
'f':wo.sm:=wo.sm-(abs(ta.gj-wo.fy)div 4);
'm':begin if wo.mf<=0 then wo.mf:=0 else begin if ta.name<>'а��' then ta.sm:=ta.sm-(((wo.gj+ta.fy)*2+10)div 2);

wo.mf:=wo.mf-4;
end;end;
't': begin randomize; x:=random(2); if x=1 then begin
writeln('���ܳɹ�!!'); break; end else begin
writeln('����ʧ��!'); wo.sm:=wo.sm-abs(ta.gj-wo.fy); end;
end;
end;
if ta.sm<=0 then
begin
delay(1000); wo.jb:=wo.jb+(ta.gj+ta.fy)div (ta.dj+ta.dj );
wo.jy:=wo.jy+(ta.gj+ta.fy)div (ta.dj*3);
if ta.name='�ػ�A' then begin writeln('������ն��!������200');
wo.gj:=wo.gj+50; end;
if ta.name='�ػ�B' then begin writeln('���������!150');
wo.fy:=wo.fy+40;
end;
delay(1000);
writeln('����:',wo.name);
writeln('����:',wo.sm);
writeln('����:',wo.gj);
writeln('����:',wo.fy);
writeln('ħ��:',wo.mf);
writeln('���:',wo. jb);
writeln('����:',wo.jy);
writeln('�ȼ�:',wo.dj);
writeln('-------------------------');
end else
if wo.sm<=0 then begin writeln('�����!'); delay(1000); exit; end else begin
wo.sm:=wo.sm-abs(ta.gj-wo.fy)*4 div 3;
if ta.name='а��' then ta.sm:=wo.sm*2;
end;
end;
writeln('ʤ��!');
end;
end;
until wo.sm<=0;
end.
