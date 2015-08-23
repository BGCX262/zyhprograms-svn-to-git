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
writeln('是否打开上次储存?');
readln(ch);
if ch='Y' then begin
write('输入文件名:');
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
writeln('姓名:',wo.name);
writeln('生命:',wo.sm);
writeln('攻击:',wo.gj);
writeln('防御:',wo.fy);
writeln('魔法:',wo.mf);
writeln('金币:',wo. jb);
writeln('经验:',wo.jy);
writeln('等级:',wo.dj);
delay(1000);
end;
if ch<>'Y' then begin
wo.jb:=0; wo.jy:=0; wo.dj:=1;
writeln('请选择战士:');
delay(1000);
writeln('轩辕------------x');
writeln('孙悟空--------------w');
writeln('三太子-----------s');
readln(ch);
case ch of
'x':begin wo.name:='轩辕';wo.sm:=1900;wo.gj:=18;wo.fy:=24;wo.mf:=20;
writeln('姓名:',wo.name);
writeln('生命:',wo.sm);
writeln('攻击:',wo.gj);
writeln('防御:',wo.fy);
writeln('魔法:',wo.mf);
writeln('金币:',wo. jb);
writeln('经验:',wo.jy);
writeln('等级:',wo.dj);
delay(1000);end;
'w':begin wo.name:='孙悟空';wo.sm:=2200;wo.gj:=24;wo.fy:=18;wo.mf:=20;
writeln('姓名:',wo.name);
writeln('生命:',wo.sm);
writeln('攻击:',wo.gj);
writeln('防御:',wo.fy);
writeln('魔法:',wo.mf);
writeln('金币:',wo. jb);
writeln('经验:',wo.jy);
writeln('等级:',wo.dj);
delay(1000);end;
's':begin wo.name:='三太子';wo.sm:=1900;wo.gj:=20;wo.fy:=18;wo.mf:=24;
writeln('姓名:',wo.name);
writeln('生命:',wo.sm);
writeln('攻击:',wo.gj);
writeln('防御:',wo.fy);
writeln('魔法:',wo.mf);
writeln('金币:',wo. jb);
writeln('经验:',wo.jy);
writeln('等级:',wo.dj);
delay(1000);end;
end;
end;
repeat
writeln('你要去哪儿?');
writeln('森林-----------s');
writeln('沼泽------------z');
writeln('城堡----------c');
writeln('地府--------------d');
writeln('龙宫----------l');
writeln('天宫----------g');
writeln('神墓------------m');
writeln('西天------------x');
writeln('商店---------a');
writeln('炼丹房------f');
writeln('怪物战场----------n');
writeln('怪物商店----------w');
writeln('捕捉怪物----------b');
writeln('看怪物背包----------k');
writeln('退出------------t');
readln(ch);
case ch of
'n':
begin
randomize;
x:=random(9);
case x of
0:begin ta.name:='蚊香蝌蚪';ta.sm:=70;ta.gj:=47;ta.fy:=27;ta.dj:=1; end;
1:begin ta.name:='阿柏蛇';ta.sm:=100;ta.gj:=60;ta.fy:=50;ta.dj:=1; end;
2:begin ta.name:='双弹瓦斯';ta.sm:=100;ta.gj:=50;ta.fy:=70;ta.dj:=1; end;
3:begin ta.name:='蚊香蛙';ta.sm:=130;ta.gj:=80;ta.fy:=60;ta.dj:=1; end;
4:begin ta.name:='椰蛋树';ta.sm:=100;ta.gj:=70;ta.fy:=50;ta.dj:=2; end;
5:begin ta.name:='小巨鳄';ta.sm:=150;ta.gj:=70;ta.fy:=20;ta.dj:=2; end;
6:begin ta.name:='可达鸭';ta.sm:=200;ta.gj:=100;ta.fy:=25;ta.dj:=2; end;
7:begin ta.name:='诺基亚';ta.sm:=700;ta.gj:=350;ta.fy:=300;ta.dj:=5; end;
8:begin ta.name:='快龙';ta.sm:=500;ta.gj:=270;ta.fy:=250;ta.dj:=3;end;
end;
writeln('对手:',ta.name);
writeln('生命:',ta.sm);
writeln('攻击:',ta.gj);
writeln('防御:',ta.fy);
writeln('等级:',ta.dj);
writeln('捕捉b,杀死s');
readln(c);
wb.name:=ta.name;wb.sm:=ta.sm;wb.gj:=ta.gj;wb.fy:=ta.fy;wb.dj:=ta.dj;
writeln('选择派谁?');
writeln('怪物列表:');
for i:=1 to g do
writeln('姓名:',gg[i].name,' ','生命:',gg[i].sm,' ','攻击:',gg[i].gj,' ','防御:',gg[i].fy,' ','等级:',gg[i].dj);
readln(i);
while (ta.sm>0)and(gg[i].sm>0) do
begin
writeln('对手:',ta.name);
writeln('生命:',ta.sm);
writeln('攻击:',ta.gj);
writeln('防御:',ta.fy);
writeln('等级:',ta.dj);
writeln('-------------------------');
delay(1000);
writeln('姓名:',gg[i].name);
writeln('生命:',gg[i].sm);
writeln('攻击:',gg[i].gj);
writeln('防御:',gg[i].fy);
writeln('经验:',gg[i].jy);
writeln('等级:',gg[i].dj);
writeln('-------------------------');
writeln('攻击-------------g');
writeln('防御-------------f');
writeln('逃跑-------------t');
readln(sh);
if sh='g' then  ta.sm:=ta.sm-(abs(gg[i].gj-ta.fy)*2)div 4;
if sh='f' then gg[i].sm:=gg[i].sm-(abs(ta.gj-gg[i].fy)div 4)*2;
if sh='t' then begin randomize; x:=random(2); if x=1 then begin
writeln('逃跑成功!!'); break; end;
end;
gg[i].sm:=gg[i].sm-abs(ta.gj-gg[i].fy)*5*2;
end;
if (ta.sm<=0)and(c='b') then begin
inc(g);gg[g].name:=wb.name;gg[g].sm:=wb.sm;gg[g].gj:=wb.gj;gg[g].fy:=wb.fy;gg[g].dj:=wb.dj;
gg[i].jy:=gg[i].jy+ta.dj*ta.gj div 10;
wo.jb:=wo.jb+ta.dj*ta.gj div 7;
writeln('怪物列表:');
for i:=1 to g do
writeln('姓名:',gg[i].name,' ','生命:',gg[i].sm,' ','攻击:',gg[i].gj,' ','防御:',gg[i].fy,' ','等级:',gg[i].dj);
end;
if (ta.sm<=0)and(c='s') then begin  gg[i].jy:=gg[i].jy+ta.dj*ta.gj div 10;
wo.jb:=wo.jb+ta.dj*ta.gj div 9;
end;
if gg[i].sm<=0 then writeln(gg[i].name,'挂了!');
end;
'k':begin
writeln('怪物列表:');
for i:=1 to g do
writeln('姓名:',gg[i].name,' ','生命:',gg[i].sm,' ','攻击:',gg[i].gj,' ','防御:',gg[i].fy,' ','等级:',gg[i].dj);
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
writeln('怪物列表:');
for i:=1 to g do
writeln('姓名:',gg[i].name,' ','生命:',gg[i].sm,' ','攻击:',gg[i].gj,' ','防御:',gg[i].fy,' ','等级:',gg[i].dj);
writeln('你要买什么?');
writeln('小血瓶 12$ 生命加100--------------------p');
writeln('大血瓶 40$ 生命加300--------------------x');
writeln('剑 20$ 攻击加5--------------------------j');
writeln('弓 25$ 攻击加7--------------------------g');
writeln('盾 15$ 防御加3--------------------------d');
writeln('黄金甲 30$ 防御加6----------------------h');
writeln('升级丸 50$ 升级-------------------------w');
writeln('月亮之水 70$ 攻.防各加5,生加500------y');
readln(ah);
writeln('给几号怪物用?');
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
1:begin ta.name:='妙娃种子';ta.sm:=100;ta.gj:=50;ta.fy:=40;ta.dj:=1;end;
2:begin ta.name:='皮卡丘';ta.sm:=200;ta.gj:=60;ta.fy:=55;ta.dj:=1;end;
3:begin ta.name:='杰尼龟';ta.sm:=250;ta.gj:=75;ta.fy:=66;ta.dj:=1;end;
4:begin ta.name:='小火龙';ta.sm:=320;ta.gj:=80;ta.fy:=70;ta.dj:=1;end;
5:begin ta.name:='沙瓦郎';ta.sm:=100;ta.gj:=30;ta.fy:=20;ta.dj:=1;end;
6:begin ta.name:='耿鬼';ta.sm:=400;ta.gj:=90;ta.fy:=90;ta.dj:=1;end;
7:begin ta.name:='水炮鱼';ta.sm:=50;ta.gj:=20;ta.fy:=17;ta.dj:=1;end;
8:begin ta.name:='鲤鱼王';ta.sm:=90;ta.gj:=0;ta.fy:=20;ta.dj:=1;end;
9:begin ta.name:='妙娃花';ta.sm:=800;ta.gj:=130;ta.fy:=120;ta.dj:=1;end;
10:begin ta.name:='喷火龙';ta.sm:=1000;ta.gj:=200;ta.fy:=170;ta.dj:=1;end;
end;
wb.name:=ta.name;wb.sm:=ta.sm;wb.gj:=ta.gj;wb.fy:=ta.fy;wb.dj:=ta.dj;
while (ta.sm>0)and(wo.sm>0) do
begin
writeln('对手:',ta.name);
writeln('生命:',ta.sm);
writeln('攻击:',ta.gj);
writeln('防御:',ta.fy);
writeln('等级:',ta.dj);
writeln('-------------------------');
delay(1000);
writeln('姓名:',wo.name);
writeln('生命:',wo.sm);
writeln('攻击:',wo.gj);
writeln('防御:',wo.fy);
writeln('魔法:',wo.mf);
writeln('金币:',wo. jb);
writeln('经验:',wo.jy);
writeln('等级:',wo.dj);
writeln('-------------------------');
writeln('攻击-------------g');
writeln('防御-------------f');
writeln('魔法---------------m');
writeln('逃跑-------------t');
readln(sh);
case sh of
'g': ta.sm:=ta.sm-(abs(wo.gj-ta.fy)*2)div 4;
'f':wo.sm:=wo.sm-(abs(ta.gj-wo.fy)div 4)*2;
'm': if wo.mf<=0 then wo.mf:=0 else begin ta.sm:=ta.sm-((wo.gj+wo.fy)*2+10)div 4; wo.mf:=wo.mf-4;
end;
't': begin randomize; x:=random(2); if x=1 then begin
writeln('逃跑成功!!'); break; end else begin
writeln('逃跑失败!'); wo.sm:=wo.sm-abs(ta.gj-wo.fy)*2; end;
end;
end;
if ta.sm<=0 then begin inc(g);gg[g].name:=wb.name;gg[g].sm:=wb.sm;gg[g].gj:=wb.gj;gg[g].fy:=wb.fy;gg

[g].dj:=wb.dj;
writeln('怪物列表:');
for i:=1 to g do
writeln('姓名:',gg[i].name,' ','生命:',gg[i].sm,' ','攻击:',gg[i].gj,' ','防御:',gg[i].fy,' ','等级:',gg[i].dj);
end
else
if wo.sm<=0 then begin writeln('你挂了!'); delay(1000); exit; end else
wo.sm:=wo.sm-abs(ta.gj-wo.fy)*4 div 3*5;
end;
end;
's':begin
textbackground(green);
textcolor(white);
randomize;
x:=random(8);
case x of
0:begin ta.name:='草妖';ta.sm:=35;ta.gj:=17;ta.fy:=7;ta.dj:=1; end;
1:begin ta.name:='食人花';ta.sm:=40;ta.gj:=20;ta.fy:=5;ta.dj:=1; end;
2:begin ta.name:='百年树精';ta.sm:=50;ta.gj:=30;ta.fy:=10;ta.dj:=2; end;
3:begin ta.name:='蛇精';ta.sm:=70;ta.gj:=35;ta.fy:=13;ta.dj:=2; end;
4:begin ta.name:='野猪';ta.sm:=100;ta.gj:=50;ta.fy:=10;ta.dj:=3; end;
5:begin ta.name:='狮子';ta.sm:=150;ta.gj:=70;ta.fy:=20;ta.dj:=3; end;
6:begin ta.name:='老虎';ta.sm:=200;ta.gj:=100;ta.fy:=25;ta.dj:=4; end;
7:begin ta.name:='山神';ta.sm:=250;ta.gj:=150;ta.fy:=30;ta.dj:=5; end;
end;
while (ta.sm>0)and(wo.sm>0) do
begin
writeln('对手:',ta.name);
writeln('生命:',ta.sm);
writeln('攻击:',ta.gj);
writeln('防御:',ta.fy);
writeln('等级:',ta.dj);
writeln('-------------------------');
delay(1000);
writeln('姓名:',wo.name);
writeln('生命:',wo.sm);
writeln('攻击:',wo.gj);
writeln('防御:',wo.fy);
writeln('魔法:',wo.mf);
writeln('金币:',wo. jb);
writeln('经验:',wo.jy);
writeln('等级:',wo.dj);
writeln('-------------------------');
writeln('攻击-------------g');
writeln('防御-------------f');
writeln('魔法---------------m');
writeln('逃跑-------------t');
readln(sh);
case sh of
'g': ta.sm:=ta.sm-(abs(wo.gj-ta.fy)*2);
'f':wo.sm:=wo.sm-(abs(ta.gj-wo.fy)div 4);
'm': if wo.mf<=0 then wo.mf:=0 else begin ta.sm:=ta.sm-((wo.gj+wo.fy)*2+10)div 2; wo.mf:=wo.mf-4;
end;
't': begin randomize; x:=random(2); if x=1 then begin
writeln('逃跑成功!!'); break; end else begin
writeln('逃跑失败!'); wo.sm:=wo.sm-abs(ta.gj-wo.fy); end;
end;
end;
if ta.sm<=0 then
begin
delay(1000); wo.jb:=wo.jb+(ta.gj+ta.fy)div (ta.dj*2);
wo.jy:=wo.jy+(ta.gj+ta.fy)div (ta.dj*3);
if ta.name='蛇精' then begin writeln('你获得了蛇胆!生命加200');
wo.sm:=wo.sm+200; end;
if ta.name='野猪' then begin writeln('你获得了猪皮!防御加5');
wo.fy:=wo.fy+5; end;
if ta.name='草妖' then begin writeln('你获得了草药!生命加100');
wo.sm:=wo.sm+100; end;
if ta.name='食人花' then begin writeln('你获得了花露!攻击加3');
wo.gj:=wo.gj+3; end;
if ta.name='百年树精' then begin writeln('你获得了树皮!防御加4');
wo.fy:=wo.fy+4; end;
if ta.name='狮子' then begin writeln('你获得了狮头!魔法加8');
wo.mf:=wo.mf+8; end;
if ta.name='老虎' then begin writeln('你获得了虎骨!攻击加10');
wo.gj:=wo.gj+10; end;
if ta.name='山神' then begin writeln('你获得了神棒!魔法加12');
wo.mf:=wo.mf+12; end;
delay(1000);
writeln('姓名:',wo.name);
writeln('生命:',wo.sm);
writeln('攻击:',wo.gj);
writeln('防御:',wo.fy);
writeln('魔法:',wo.mf);
writeln('金币:',wo. jb);
writeln('经验:',wo.jy);
writeln('等级:',wo.dj);
writeln('-------------------------');
end else
if wo.sm<=0 then begin writeln('你挂了!'); delay(1000); exit; end else
wo.sm:=wo.sm-abs(ta.gj-wo.fy)*4 div 3;
end;
writeln('胜利!');
end;
't':begin
writeln('是否保存?');
readln(ch);
if ch='Y' then
begin
writeln('输入保存文件名:');
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
writeln('姓名:',wo.name);
writeln('生命:',wo.sm);
writeln('攻击:',wo.gj);
writeln('防御:',wo.fy);
writeln('魔法:',wo.mf);
writeln('金币:',wo. jb);
writeln('经验:',wo.jy);
writeln('等级:',wo.dj);
writeln('-------------------------');
end;
writeln('你要买什么?');
writeln('小血瓶 12$ 生命加100--------------------p');
writeln('大血瓶 40$ 生命加300--------------------x');
writeln('剑 20$ 攻击加5--------------------------j');
writeln('弓 25$ 攻击加7--------------------------g');
writeln('盾 15$ 防御加3--------------------------d');
writeln('黄金甲 30$ 防御加6----------------------h');
writeln('水晶球 30$ 魔法加8----------------------s');
writeln('升级丸 50$ 升级-------------------------w');
writeln('月亮之水 70$ 魔.攻.防各加5,生加500------y');
writeln('特殊药丸 3000$ 邪神失效-----------------t');
writeln('成倍丸 4000$ 魔.攻.防.生各乘2-----------c');
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
if (wo.dj>=100)and(wo.name='孙悟空')or(wo.dj>=200)and(wo.name='光战士') then
if wo.name='孙悟空' then begin
wo.name:='光战士';
wo.sm:=wo.sm+wo.sm div 2;
wo.gj:=wo.gj+wo.gj div 3;
wo.fy:=wo.fy+wo.fy div 3;
wo.mf:=wo.mf+wo.mf div 3;
wo.jb:=wo.jb*2;
end else
begin
wo.name:='战神';
wo.sm:=wo.sm+wo.sm div 2;
wo.gj:=wo.gj+wo.gj div 3;
wo.fy:=wo.fy+wo.fy div 3;
wo.mf:=wo.mf+wo.mf div 3;
wo.jb:=wo.jb*2;
end;
if (wo.name='轩辕')and(wo.dj>=100)or(wo.name='狼人')and(wo.dj>=200) then
if wo.name='轩辕' then begin
wo.name:='狼人';
wo.sm:=wo.sm+wo.sm div 2;
wo.gj:=wo.gj+wo.gj div 3;
wo.fy:=wo.fy+wo.fy div 3;
wo.mf:=wo.mf+wo.mf div 3;
wo.jb:=wo.jb*2; end else
begin
wo.name:='狼战士';
wo.sm:=wo.sm+wo.sm div 2;
wo.gj:=wo.gj+wo.gj div 3;
wo.fy:=wo.fy+wo.fy div 3;
wo.mf:=wo.mf+wo.mf div 3;
wo.jb:=wo.jb*2; end;
if (wo.name='三太子')and(wo.dj>=100)or(wo.name='四太子')and(wo.dj>=200) then
if wo.name='三太子' then begin
wo.name:='四太子';
wo.sm:=wo.sm+wo.sm div 2;
wo.gj:=wo.gj+wo.gj div 3;
wo.fy:=wo.fy+wo.fy div 3;
wo.mf:=wo.mf+wo.mf div 3;
wo.jb:=wo.jb*2; end else
begin
wo.name:='托塔李天王';
wo.sm:=wo.sm+wo.sm div 2;
wo.gj:=wo.gj+wo.gj div 3;
wo.fy:=wo.fy+wo.fy div 3;
wo.mf:=wo.mf+wo.mf div 3;
wo.jb:=wo.jb*2; end;
delay(1000);
writeln('姓名:',wo.name);
writeln('生命:',wo.sm);
writeln('攻击:',wo.gj);
writeln('防御:',wo.fy);
writeln('魔法:',wo.mf);
writeln('金币:',wo. jb);
writeln('经验:',wo.jy);
writeln('等级:',wo.dj);
writeln('-------------------------');
end;
'z':begin
textbackground(black);
textcolor(yellow);
randomize;
x:=random(8);
case x of
0:begin ta.name:='烂泥怪';ta.sm:=80;ta.gj:=30;ta.fy:=25;ta.dj:=3; end;
1:begin ta.name:='沼泽水怪';ta.sm:=100;ta.gj:=30;ta.fy:=30;ta.dj:=3; end;
2:begin ta.name:='沼泽士兵';ta.sm:=150;ta.gj:=35;ta.fy:=35;ta.dj:=4; end;
3:begin ta.name:='沼泽队长';ta.sm:=200;ta.gj:=50;ta.fy:=50;ta.dj:=5; end;
4:begin ta.name:='沼泽射手';ta.sm:=300;ta.gj:=70;ta.fy:=60;ta.dj:=6; end;
5:begin ta.name:='沼泽骑士';ta.sm:=400;ta.gj:=100;ta.fy:=80;ta.dj:=7; end;
6:begin ta.name:='沼泽魔神';ta.sm:=500;ta.gj:=130;ta.fy:=100;ta.dj:=7; end;
7:begin ta.name:='沼泽之王';ta.sm:=600;ta.gj:=150;ta.fy:=130;ta.dj:=8; end;
end;
while (ta.sm>0)and(wo.sm>0) do
begin
writeln('对手:',ta.name);
writeln('生命:',ta.sm);
writeln('攻击:',ta.gj);
writeln('防御:',ta.fy);
writeln('等级:',ta.dj);
writeln('-------------------------');
delay(1000);
writeln('姓名:',wo.name);
writeln('生命:',wo.sm);
writeln('攻击:',wo.gj);
writeln('防御:',wo.fy);
writeln('魔法:',wo.mf);
writeln('金币:',wo. jb);
writeln('经验:',wo.jy);
writeln('等级:',wo.dj);
writeln('-------------------------');
writeln('攻击-------------g');
writeln('防御-------------f');
writeln('魔法---------------m');
writeln('逃跑-------------t');
readln(sh);
case sh of
'g': begin ta.sm:=ta.sm-(abs(wo.gj-ta.fy)*2); if ta.name='沼泽水怪' then
begin wo.sm:=wo.sm-30;ta.sm:=ta.sm+30;end;end;
'f':wo.sm:=wo.sm-(abs(ta.gj-wo.fy)div 4);
'm':begin if wo.mf<=0 then wo.mf:=0 else begin ta.sm:=ta.sm-((wo.gj+ta.fy)*2+10)div 2; wo.mf:=wo.mf-4;
end;if ta.name='沼泽水怪' then
begin wo.sm:=wo.sm-30;ta.sm:=ta.sm+30;end; end;
't': begin randomize; x:=random(2); if x=1 then begin
writeln('逃跑成功!!'); break; end else begin
writeln('逃跑失败!'); wo.sm:=wo.sm-abs(ta.gj-wo.fy); end;
end;
end;
if ta.sm<=0 then
begin
delay(1000); wo.jb:=wo.jb+(ta.gj+ta.fy)div (ta.dj*2);
wo.jy:=wo.jy+(ta.gj+ta.fy)div (ta.dj*3);
if ta.name='烂泥怪' then begin writeln('你获得了泥团!防御加4');
wo.fy:=wo.fy+4; end;
if ta.name='沼泽水怪' then begin writeln('你获得了神水!魔法加8');
wo.mf:=wo.mf+8; end;
if ta.name='沼泽士兵' then begin writeln('你获得了枪!攻击加5');
wo.gj:=wo.gj+5; end;
if ta.name='沼泽魔神' then begin writeln('你获得了泥浆!攻击加7');
wo.gj:=wo.gj+7; end;
if ta.name='沼泽队长' then begin writeln('你获得了盾!防御加6');
wo.fy:=wo.fy+6; end;
if ta.name='沼泽射手' then begin writeln('你获得了血箭!生命加300');
wo.sm:=wo.sm+300; end;
if ta.name='沼泽骑士' then begin writeln('你获得了沼泽宝马!魔法加16');
wo.mf:=wo.mf+16; end;
if ta.name='沼泽之王' then begin writeln('你获得了沼泽灵芝!生命加500');
wo.sm:=wo.sm+500; end;
delay(1000);
writeln('姓名:',wo.name);
writeln('生命:',wo.sm);
writeln('攻击:',wo.gj);
writeln('防御:',wo.fy);
writeln('魔法:',wo.mf);
writeln('金币:',wo. jb);
writeln('经验:',wo.jy);
writeln('等级:',wo.dj);
writeln('-------------------------');
end else
if wo.sm<=0 then begin writeln('你挂了!'); delay(1000); exit; end else
wo.sm:=wo.sm-abs(ta.gj-wo.fy)*4 div 3;
end;
writeln('胜利!');
end;
'c':begin
textbackground(white);
textcolor(black);
randomize;
x:=random(10);
case x of
0:begin ta.name:='初级士兵';ta.sm:=100;ta.gj:=40;ta.fy:=40;ta.dj:=4; end;
1:begin ta.name:='中级士兵';ta.sm:=150;ta.gj:=50;ta.fy:=30;ta.dj:=4; end;
2:begin ta.name:='高级士兵';ta.sm:=200;ta.gj:=100;ta.fy:=70;ta.dj:=5; end;
3:begin ta.name:='终极士兵';ta.sm:=300;ta.gj:=130;ta.fy:=100;ta.dj:=6; end;
4:begin ta.name:='白衣武士';ta.sm:=500;ta.gj:=200;ta.fy:=170;ta.dj:=7; end;
5:begin ta.name:='黄衣武士';ta.sm:=1000;ta.gj:=500;ta.fy:=300;ta.dj:=8; end;
6:begin ta.name:='红衣武士';ta.sm:=2000;ta.gj:=700;ta.fy:=500;ta.dj:=9; end;
7:begin ta.name:='蓝衣武士';ta.sm:=2500;ta.gj:=1000;ta.fy:=700;ta.dj:=10; end;
8:begin ta.name:='武士队长';ta.sm:=3000;ta.gj:=2000;ta.fy:=1000;ta.dj:=11; end;
9:begin ta.name:='玄冥王子';ta.sm:=4000;ta.gj:=2500;ta.fy:=2000;ta.dj:=12; end;
end;
while (ta.sm>0)and(wo.sm>0) do
begin
writeln('对手:',ta.name);
writeln('生命:',ta.sm);
writeln('攻击:',ta.gj);
writeln('防御:',ta.fy);
writeln('等级:',ta.dj);
writeln('-------------------------');
delay(1000);
writeln('姓名:',wo.name);
writeln('生命:',wo.sm);
writeln('攻击:',wo.gj);
writeln('防御:',wo.fy);
writeln('魔法:',wo.mf);
writeln('金币:',wo. jb);
writeln('经验:',wo.jy);
writeln('等级:',wo.dj);
writeln('-------------------------');
writeln('攻击-------------g');
writeln('防御-------------f');
writeln('魔法---------------m');
writeln('逃跑-------------t');
readln(sh);
case sh of
'g': ta.sm:=ta.sm-(abs(wo.gj-ta.fy)*2);
'f':wo.sm:=wo.sm-(abs(ta.gj-wo.fy)div 4);
'm':begin if wo.mf<=0 then wo.mf:=0 else begin ta.sm:=ta.sm-((wo.gj+ta.fy)*2+10)div 2; wo.mf:=wo.mf-4;
end;end;
't': begin randomize; x:=random(2); if x=1 then begin
writeln('逃跑成功!!'); break; end else begin
writeln('逃跑失败!'); wo.sm:=wo.sm-abs(ta.gj-wo.fy); end;
end;
end;
if ta.sm<=0 then
begin
delay(1000); wo.jb:=wo.jb+(ta.gj+ta.fy)div (ta.dj+ta.dj);
wo.jy:=wo.jy+(ta.gj+ta.fy)div (ta.dj*3);
if ta.name='武士队长' then begin writeln('你获得了宝剑!攻击加30');
wo.gj:=wo.gj+15; end;
if ta.name='玄冥王子' then begin writeln('你获得了王冠!生命加1000');
wo.sm:=wo.sm+1000;
end;
delay(1000);
writeln('姓名:',wo.name);
writeln('生命:',wo.sm);
writeln('攻击:',wo.gj);
writeln('防御:',wo.fy);
writeln('魔法:',wo.mf);
writeln('金币:',wo. jb);
writeln('经验:',wo.jy);
writeln('等级:',wo.dj);
writeln('-------------------------');
end else
if wo.sm<=0 then begin writeln('你挂了!'); delay(1000); exit; end else
wo.sm:=wo.sm-abs(ta.gj-wo.fy)*4 div 3;
end;
writeln('胜利');
end;
'd':begin
textbackground(blue);
textcolor(green);
randomize;
x:=random(9);
case x of
0:begin ta.name:='勾魂使者';ta.sm:=500;ta.gj:=200;ta.fy:=100;ta.dj:=7; end;
1:begin ta.name:='勾魂战士';ta.sm:=600;ta.gj:=250;ta.fy:=150;ta.dj:=7; end;
2:begin ta.name:='牛头';ta.sm:=1000;ta.gj:=500;ta.fy:=300;ta.dj:=8; end;
3:begin ta.name:='马面';ta.sm:=1500;ta.gj:=1000;ta.fy:=500;ta.dj:=8; end;
4:begin ta.name:='鬼魂';ta.sm:=2000;ta.gj:=1500;ta.fy:=1000;ta.dj:=9; end;
5:begin ta.name:='地府法师';ta.sm:=3000;ta.gj:=2000;ta.fy:=1500;ta.dj:=10; end;
6:begin ta.name:='地府判官';ta.sm:=4000;ta.gj:=3000;ta.fy:=2000;ta.dj:=11; end;
7:begin ta.name:='阎王爷';ta.sm:=5000;ta.gj:=3500;ta.fy:=2500;ta.dj:=12; end;
8:begin ta.name:='地藏菩萨';ta.sm:=10000;ta.gj:=5000;ta.fy:=4000;ta.dj:=13; end;
end;
while (ta.sm>0)and(wo.sm>0) do
begin
writeln('对手:',ta.name);
writeln('生命:',ta.sm);
writeln('攻击:',ta.gj);
writeln('防御:',ta.fy);
writeln('等级:',ta.dj);
writeln('-------------------------');
delay(1000);
writeln('姓名:',wo.name);
writeln('生命:',wo.sm);
writeln('攻击:',wo.gj);
writeln('防御:',wo.fy);
writeln('魔法:',wo.mf);
writeln('金币:',wo. jb);
writeln('经验:',wo.jy);
writeln('等级:',wo.dj);
writeln('-------------------------');
writeln('攻击-------------g');
writeln('防御-------------f');
writeln('魔法---------------m');
writeln('逃跑-------------t');
readln(sh);
case sh of
'g': ta.sm:=ta.sm-(abs(wo.gj-ta.fy)*2);
'f':wo.sm:=wo.sm-(abs(ta.gj-wo.fy)div 4);
'm':begin if wo.mf<=0 then wo.mf:=0 else begin ta.sm:=ta.sm-(((wo.gj+ta.fy)*2+10)div 2); wo.mf:=wo.mf-4;
end;end;
't': begin randomize; x:=random(2); if x=1 then begin
writeln('逃跑成功!!'); break; end else begin
writeln('逃跑失败!'); wo.sm:=wo.sm-abs(ta.gj-wo.fy); end;
end;
end;
if ta.sm<=0 then
begin
delay(500); wo.jb:=wo.jb+(ta.gj+ta.fy)div (ta.dj+ta.dj);
wo.jy:=wo.jy+(ta.gj+ta.fy)div (ta.dj*3);
if ta.name='牛头' then begin writeln('你获得了牛肉!攻击加20');
wo.gj:=wo.gj+20; end;
if ta.name='马面' then begin writeln('你获得了马肉!防御加20');
wo.fy:=wo.fy+20;
end;
delay(1000);
writeln('姓名:',wo.name);
writeln('生命:',wo.sm);
writeln('攻击:',wo.gj);
writeln('防御:',wo.fy);
writeln('魔法:',wo.mf);
writeln('金币:',wo. jb);
writeln('经验:',wo.jy);
writeln('等级:',wo.dj);
writeln('-------------------------');
end else
if wo.sm<=0 then begin writeln('你挂了!'); delay(1000); exit; end else
wo.sm:=wo.sm-abs(ta.gj-wo.fy)*4 div 3;
end;
writeln('胜利!');
end;
'l':begin
textbackground(blue);
textcolor(yellow);
randomize;
x:=random(9);
case x of
0:begin ta.name:='海草';ta.sm:=1000;ta.gj:=500;ta.fy:=700;ta.dj:=10; end;
1:begin ta.name:='漩涡';ta.sm:=2000;ta.gj:=1000;ta.fy:=700;ta.dj:=10; end;
2:begin ta.name:='虾兵';ta.sm:=3500;ta.gj:=2000;ta.fy:=1000;ta.dj:=11; end;
3:begin ta.name:='蟹将';ta.sm:=5000;ta.gj:=3000;ta.fy:=2000;ta.dj:=11; end;
4:begin ta.name:='千年老龟';ta.sm:=10000;ta.gj:=5000;ta.fy:=3000;ta.dj:=13; end;
5:begin ta.name:='万年老龟';ta.sm:=15000;ta.gj:=10000;ta.fy:=5000;ta.dj:=20; end;
6:begin ta.name:='龙孙';ta.sm:=20000;ta.gj:=12000;ta.fy:=10000;ta.dj:=23; end;
7:begin ta.name:='龙子';ta.sm:=30000;ta.gj:=15000;ta.fy:=14000;ta.dj:=25; end;
8:begin ta.name:='龙王';ta.sm:=100000;ta.gj:=50000;ta.fy:=40000;ta.dj:=50; end;
end;
while (ta.sm>0)and(wo.sm>0) do
begin
writeln('对手:',ta.name);
writeln('生命:',ta.sm);
writeln('攻击:',ta.gj);
writeln('防御:',ta.fy);
writeln('等级:',ta.dj);
writeln('-------------------------');
delay(1000);
writeln('姓名:',wo.name);
writeln('生命:',wo.sm);
writeln('攻击:',wo.gj);
writeln('防御:',wo.fy);
writeln('魔法:',wo.mf);
writeln('金币:',wo. jb);
writeln('经验:',wo.jy);
writeln('等级:',wo.dj);
writeln('-------------------------');
writeln('攻击-------------g');
writeln('防御-------------f');
writeln('魔法---------------m');
writeln('逃跑-------------t');
readln(sh);
case sh of
'g': ta.sm:=ta.sm-(abs(wo.gj-ta.fy)*2);
'f':wo.sm:=wo.sm-(abs(ta.gj-wo.fy)div 4);
'm':begin if wo.mf<=0 then wo.mf:=0 else begin ta.sm:=ta.sm-(((wo.gj+ta.fy)*2+10)div 2); wo.mf:=wo.mf-4;
end;end;
't': begin randomize; x:=random(2); if x=1 then begin
writeln('逃跑成功!!'); break; end else begin
writeln('逃跑失败!'); wo.sm:=wo.sm-abs(ta.gj-wo.fy); end;
end;
end;
if ta.sm<=0 then
begin
delay(500); wo.jb:=wo.jb+(ta.gj+ta.fy)div (ta.dj+ta.dj );
wo.jy:=wo.jy+(ta.gj+ta.fy)div (ta.dj*3);
if ta.name='虾兵' then begin writeln('你获得了虾肉!攻击加50');
wo.gj:=wo.gj+50; end;
if ta.name='蟹将' then begin writeln('你获得了蟹壳!防御加40');
wo.fy:=wo.fy+40;
end;
delay(1000);
writeln('姓名:',wo.name);
writeln('生命:',wo.sm);
writeln('攻击:',wo.gj);
writeln('防御:',wo.fy);
writeln('魔法:',wo.mf);
writeln('金币:',wo. jb);
writeln('经验:',wo.jy);
writeln('等级:',wo.dj);
writeln('-------------------------');
end else
if wo.sm<=0 then begin writeln('你挂了!'); delay(1000); exit; end else
wo.sm:=wo.sm-abs(ta.gj-wo.fy)*4 div 3;
end;
writeln('胜利!');
end;
'f':begin
textbackground(red);
textcolor(black);
writeln('你要买什么丹?');
writeln('铁丹 150$ 防御加50-------------t');
writeln('铜丹 450$ 防御加150------------d');
writeln('不锈丹 300$ 攻击加100----------b');
writeln('银丹 450$ 攻击加150------------y');
writeln('金丹 700$ 攻击加 300-----------j');
writeln('合成丸 400$ 生命加 1000--------h');
readln(ch);
case ch of
't':if wo.jb>=150 then begin wo.fy:=wo.fy+50; wo.jb:=wo.jb-150; end;
'd':if wo.jb>=450 then begin wo.fy:=wo.fy+150; wo.jb:=wo.jb-450; end;
'b':if wo.jb>=300 then begin wo.gj:=wo.gj+100; wo.jb:=wo.jb-300; end;
'y':if wo.jb>=450 then begin wo.gj:=wo.gj+150; wo.jb:=wo.jb-450; end;
'j':if wo.jb>=700 then begin wo.gj:=wo.gj+300; wo.jb:=wo.jb-700; end;
'h':if wo.jb>=400 then begin wo.gj:=wo.gj+1000; wo.jb:=wo.jb-400; end;
end;
writeln('姓名:',wo.name);
writeln('生命:',wo.sm);
writeln('攻击:',wo.gj);
writeln('防御:',wo.fy);
writeln('魔法:',wo.mf);
writeln('金币:',wo. jb);
writeln('经验:',wo.jy);
writeln('等级:',wo.dj);
writeln('-------------------------');
end;
'g':begin
textbackground(blue);
textcolor(white);
randomize;
x:=random(9);
case x of
0:begin ta.name:='金神';ta.sm:=5000;ta.gj:=500;ta.fy:=700;ta.dj:=20; end;
1:begin ta.name:='木神';ta.sm:=10000;ta.gj:=1000;ta.fy:=700;ta.dj:=25; end;
2:begin ta.name:='水神';ta.sm:=20000;ta.gj:=2000;ta.fy:=1000;ta.dj:=11; end;
3:begin ta.name:='火神';ta.sm:=25000;ta.gj:=3000;ta.fy:=2000;ta.dj:=11; end;
4:begin ta.name:='土神';ta.sm:=30000;ta.gj:=5000;ta.fy:=3000;ta.dj:=13; end;
5:begin ta.name:='五行神';ta.sm:=50000;ta.gj:=10000;ta.fy:=5000;ta.dj:=20; end;
6:begin ta.name:='玉帝守卫A';ta.sm:=100000;ta.gj:=12000;ta.fy:=10000;ta.dj:=23; end;
7:begin ta.name:='玉帝守卫B';ta.sm:=200000;ta.gj:=15000;ta.fy:=14000;ta.dj:=25; end;
8:begin ta.name:='玉帝';ta.sm:=500000;ta.gj:=100000;ta.fy:=200000;ta.dj:=100; end;
end;
while (ta.sm>0)and(wo.sm>0) do
begin
writeln('对手:',ta.name);
writeln('生命:',ta.sm);
writeln('攻击:',ta.gj);
writeln('防御:',ta.fy);
writeln('等级:',ta.dj);
writeln('-------------------------');
delay(1000);
writeln('姓名:',wo.name);
writeln('生命:',wo.sm);
writeln('攻击:',wo.gj);
writeln('防御:',wo.fy);
writeln('魔法:',wo.mf);
writeln('金币:',wo. jb);
writeln('经验:',wo.jy);
writeln('等级:',wo.dj);
writeln('-------------------------');
writeln('攻击-------------g');
writeln('防御-------------f');
writeln('魔法---------------m');
writeln('逃跑-------------t');
readln(sh);
case sh of
'g': ta.sm:=ta.sm-(abs(wo.gj-ta.fy)*2);
'f':wo.sm:=wo.sm-(abs(ta.gj-wo.fy)div 4);
'm':begin if wo.mf<=0 then wo.mf:=0 else begin ta.sm:=ta.sm-(((wo.gj+ta.fy)*2+10)div 2); wo.mf:=wo.mf-4;
end;end;
't': begin randomize; x:=random(2); if x=1 then begin
writeln('逃跑成功!!'); break; end else begin
writeln('逃跑失败!'); wo.sm:=wo.sm-abs(ta.gj-wo.fy); end;
end;
end;
if ta.sm<=0 then
begin
delay(1000); wo.jb:=wo.jb+(ta.gj+ta.fy)div (ta.dj+ta.dj );
wo.jy:=wo.jy+(ta.gj+ta.fy)div (ta.dj*3);
if ta.name='玉帝守卫A' then begin writeln('你获得了叉!攻击加70');
wo.gj:=wo.gj+50; end;
if ta.name='玉帝守卫B' then begin writeln('你获得了盾!防御加100');
wo.fy:=wo.fy+40;
end;
delay(1000);
writeln('姓名:',wo.name);
writeln('生命:',wo.sm);
writeln('攻击:',wo.gj);
writeln('防御:',wo.fy);
writeln('魔法:',wo.mf);
writeln('金币:',wo. jb);
writeln('经验:',wo.jy);
writeln('等级:',wo.dj);
writeln('-------------------------');
end else
if wo.sm<=0 then begin writeln('你挂了!'); delay(1000); exit; end else
wo.sm:=wo.sm-abs(ta.gj-wo.fy)*4 div 3;
end;
writeln('胜利!');
end;
'm':begin
textbackground(black);
textcolor(green);
randomize;
x:=random(9);
case x of
0:begin ta.name:='鬼魂2';ta.sm:=10000;ta.gj:=5000;ta.fy:=2500;ta.dj:=100; end;
1:begin ta.name:='守护A';ta.sm:=50000;ta.gj:=10000;ta.fy:=5000;ta.dj:=200; end;
2:begin ta.name:='守护B';ta.sm:=50000;ta.gj:=5000;ta.fy:=10000;ta.dj:=400; end;
3:begin ta.name:='坟墓守卫';ta.sm:=100000;ta.gj:=30000;ta.fy:=20000;ta.dj:=800; end;
4:begin ta.name:='坟墓阵';ta.sm:=150000;ta.gj:=40000;ta.fy:=30000;ta.dj:=1600; end;
5:begin ta.name:='魔界巨头1';ta.sm:=200000;ta.gj:=60000;ta.fy:=5000;ta.dj:=3200; end;
6:begin ta.name:='魔界巨头2';ta.sm:=400000;ta.gj:=120000;ta.fy:=10000;ta.dj:=6400; end;
7:begin ta.name:='魔界巨头3';ta.sm:=800000;ta.gj:=24000;ta.fy:=20000;ta.dj:=12800; end;
8:begin ta.name:='邪神';if y=1 then begin
ta.sm:=2000000; ta.gj:=500000;ta.fy:=300000; end else begin
ta.sm:=wo.sm*2;ta.gj:=wo.fy+wo.sm;ta.fy:=wo.gj+1;ta.dj:=33600; end;
end;
end;
while (ta.sm>0)and(wo.sm>0) do
begin
writeln('对手:',ta.name);
writeln('生命:',ta.sm);
writeln('攻击:',ta.gj);
writeln('防御:',ta.fy);
writeln('等级:',ta.dj);
writeln('-------------------------');
delay(1000);
writeln('姓名:',wo.name);
writeln('生命:',wo.sm);
writeln('攻击:',wo.gj);
writeln('防御:',wo.fy);
writeln('魔法:',wo.mf);
writeln('金币:',wo. jb);
writeln('经验:',wo.jy);
writeln('等级:',wo.dj);
writeln('-------------------------');
writeln('攻击-------------g');
writeln('防御-------------f');
writeln('魔法---------------m');
writeln('逃跑-------------t');
readln(sh);
case sh of
'g': if ta.name<>'邪神' then ta.sm:=ta.sm-(abs(wo.gj-ta.fy)*2);
'f':wo.sm:=wo.sm-(abs(ta.gj-wo.fy)div 4);
'm':begin if wo.mf<=0 then wo.mf:=0 else begin if ta.name<>'邪神' then ta.sm:=ta.sm-(((wo.gj+ta.fy)*2+10)div 2);

wo.mf:=wo.mf-4;
end;end;
't': begin randomize; x:=random(2); if x=1 then begin
writeln('逃跑成功!!'); break; end else begin
writeln('逃跑失败!'); wo.sm:=wo.sm-abs(ta.gj-wo.fy); end;
end;
end;
if ta.sm<=0 then
begin
delay(1000); wo.jb:=wo.jb+(ta.gj+ta.fy)div (ta.dj+ta.dj );
wo.jy:=wo.jy+(ta.gj+ta.fy)div (ta.dj*3);
if ta.name='守护A' then begin writeln('你获得了斩神剑!攻击加200');
wo.gj:=wo.gj+50; end;
if ta.name='守护B' then begin writeln('你获得了神盾!150');
wo.fy:=wo.fy+40;
end;
delay(1000);
writeln('姓名:',wo.name);
writeln('生命:',wo.sm);
writeln('攻击:',wo.gj);
writeln('防御:',wo.fy);
writeln('魔法:',wo.mf);
writeln('金币:',wo. jb);
writeln('经验:',wo.jy);
writeln('等级:',wo.dj);
writeln('-------------------------');
end else
if wo.sm<=0 then begin writeln('你挂了!'); delay(1000); exit; end else begin
wo.sm:=wo.sm-abs(ta.gj-wo.fy)*4 div 3;
if ta.name='邪神' then ta.sm:=wo.sm*2;
end;
end;
writeln('胜利!');
end;
end;
until wo.sm<=0;
end.
