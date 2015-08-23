program game;
var a:char;
  i,j,m,n:integer;
  ma:array[1..10,1..10]of integer;
  hp,mp,money,ql,dengji,fy,atc,mc,hpmax,mpmax,zhiye,jy,mcp:integer;
procedure map;
begin
randomize;
m:=random(10);
n:=random(10);
writeln('*******地图********');
for i:=1 to 10 do
begin
  for j:=1 to 10 do
  begin
    if (i=m)and(j=n)then
    begin
    ma[i,j]:=9;
    write('9 ');
    end
    else
    begin
    ma[i,j]:=random(3);
    if ma[i,j]=0 then write('0 ');
    if ma[i,j]=1 then write('1 ');
    if ma[i,j]=2 then write('2 ');
    end;
  end;
  writeln;
end;
writeln('*******************');
readln;
end;
procedure save;
var t:text;
begin
rewrite(t);
writeln(t,dengji);
writeln(t,hpmax,' ',hp);
writeln(t,mpmax,' ',mp);
writeln(t,ql);
writeln(t,fy);
writeln(t,mc);
writeln(t,atc);
writeln(t,money);
end;
procedure load;
var t:text;
begin
reset(t);
readln(t,dengji);
readln(t,hpmax,hp);
readln(t,mpmax,mp);
readln(t,ql);
readln(t,fy);
readln(t,mc);
readln(t,atc);
readln(t,money);
end;
procedure ziliao;
begin
writeln('********************人物资料**********************');
writeln('* 等级：',dengji,'                    *');
writeln('* 生命：',hpmax,'/',hp,'              *');
writeln('* 魔力：',mpmax,'/',mp,'              *');
writeln('* 金钱：',money,'                    *');
writeln('* 升级经验/现在经验：',dengji*100+30,'/',JY,'*');
writeln('**************************************************');
end;
procedure shengji;
begin
if jy>=dengji*100+30 then
begin
  writeln('升级了！大家鼓掌！！呕～～～～～～～～～');
  dengji:=dengji+1;
  jy:=jy-dengji*100-30;
  atc:=atc+dengji*2+10;
  fy:=fy+dengji*2+10;
  mcp:=mcp+dengji*2+4;
  hpmax:=hpmax+dengji*10;
  mpmax:=mpmax+dengji*8;
  writeln('#############资料###########');
  writeln('等级：',dengji);
  hp:=hpmax;
  writeln('生命：',hpmax,'/',hp);
  mp:=mpmax;
  writeln('魔力：',mpmax,'/',mp);
  writeln('攻击力：',atc);
  writeln('防御力：',fy);
  writeln('魔击力：',mc);
end;
end;

procedure moguaishou;
var p:char;
  z,ghp,fyl,gatc,hp0,jy,mcp:integer;
begin
gatc:=random(100)+dengji*10;
writeln('你遇到了怪兽，现在：Y：战斗；N：逃跑。Y/N');
readln(p);
ghp:=random(100)*20;
hp0:=ghp;
fyl:=fy;
if p='Y' then
begin
writeln('战斗开始');
while (hp>0)and(ghp>0) do
begin
  writeln('你的HP：',hpmax,'/',hp,' ','MP:',mpmax,'/',mp,' ','气力',ql);
  writeln('怪兽的HP：',hp0,'/',ghp);
  writeln('攻击：1：普通攻击 2：魔法攻击 3：必杀 4:防御 5:逃跑 ');
  readln(p);
  z:=random(11);
  if z=5 then
  begin
    if p='1' then
    begin
    write('攻击无效！');
    readln;
    end;
    if p='2' then
    begin
    write('没打中');
    readln;
    end;
  end
  else
  begin
    if p='1'
    then
    begin
    ghp:=ghp-atc;
    if ghp<=0
    then
    begin
      write('打败怪兽！ 经验+',hp0);
      readln;
      z:=random(5);
      jy:=jy+hp0;
      if z=2 then writeln('得到金钱',(hp0 div 10)*10);
      money:=money+((hp0 div 10)*10);
      readln;
      ql:=ql+10;
      break;
    end
    else
    begin
      write('怪兽受到伤害，HP-',atc,'怪HP：',hp0,'/',ghp);
      readln;
      ql:=ql+10;
    end;
    end;
    if p='2'
    then
    begin
    begin
      writeln('选择魔法：');
      if dengji>=0 then writeln('1.火球：初始攻击力110 mp-2');
      if dengji>=2 then writeln('2.火焰：初始攻击力150 mp-5');
      if dengji>=4 then writeln('3.冰球：初始攻击力200，冰冻效果，怪兽一回合不能攻击 mp-10');
      if dengji>=6 then writeln('4.冰柱：初始攻击力250，冰冻效果，怪兽三回合不能攻击 mp-20');
      if dengji>=8 then writeln('5.猛虎炎神：初始攻击力400,灼伤效果，怪兽每回合hp减少10％ mp-40');
      if dengji>=10 then writeln('6.冰环暴：初始攻击力450，冰冻效果，怪兽三回合不能攻击 mp-40');
      readln(p);
      if p='1' then
      if mp>=2
      then
      begin
        mp:=mp-2;
        mcp:=110+mc;
      end
      else writeln('魔力不够！');
      if p='2' then
      if mp>=5
      then
      begin
        mp:=mp-5;
        mcp:=150+mc;
      end
      else writeln('魔力不够！');
      if p='3' then
      if mp>=10
      then
      begin
        mp:=mp-10;
        mcp:=200+mc;
      end
      else writeln('魔力不够！');
      if p='4' then
      if mp>=20
      then
      begin
        mp:=mp-20;
        mcp:=250+mc;
      end
      else writeln('魔力不够！');
      if p='5' then
      if mp>=40
      then
      begin
        mp:=mp-40;
        mcp:=400+mc;
      end
      else writeln('魔力不够！');
      if p='6' then
      if mp>=40
      then
      begin
        mp:=mp-40;
        mcp:=400+mc;
      end
      else writeln('魔力不够！');
    end;
    ghp:=ghp-mcp;
    if ghp<0
    then
    begin
      write('打败怪兽！ 经验+',(hp0 mod 10+10));
      readln;
      jy:=jy+hp0;
      z:=random(5);
      if z=3 then writeln('得到金钱',(hp0 div 10*10));
      money:=money+((hp0 div 10)*10);
      ql:=ql+10;
      break;
    end
    else
    begin
      write('怪兽受到伤害，HP-',mcp,'怪HP：',hp0,'/',ghp);
      readln;
      ql:=ql+10;
    end;
    end;
    if p='4' then fyl:=fy*2;
    if p='5' then begin
                z:=random(4);
                if z=3 then writeln('逃跑失败！')
                    else exit;
              end;
  end;
  writeln('回合结束');
  writeln('怪兽攻击！');
  z:=random(9);
  if z=1 then
      begin
        write('miss! ye!');
        readln;
      end
      else
      begin
        if fy>=gatc then
                begin
                  write('成功防御！');
                  readln;
                end
                else
                begin
                  hp:=hp+fyl-gatc;
                  if hp>0 then
                      begin
                        write('你的HP－',gatc-fyl,' ',hpmax,'/',hp);
                        readln;
                      end
                      else
                      begin
                        write('你挂了！重新开始吧!');
                        readln;
                        halt;
                      end;
                end;
        write('回合结束');
        readln;
      end;
  end;
  shengji;
end;
end;

procedure shangdian;
var p:char;
begin
writeln('*********************商店****************************');
if money<=0 then
begin
  writeln('老板：这里不欢迎穷光蛋！滚！！！！');
  exit;
end
else
writeln('1.红药：HP+50 100元 2.蓝药 MP+50 100元');
write('(本商店现仅开放这两类药品，你要什么？1/2 Q:Quit)');
while (money>0)and(p<>'Q') do
begin
  readln(p);
  if p='1' then
  begin
    if hp+100>hpmax
    then
    begin
    hp:=hpmax;
    writeln('生命：',hpmax,'/',hp);
    money:=money-100;
    end
    else
    begin
    hp:=hp+100;
    writeln('生命：',hpmax,'/',hp);
    money:=money-100;
    end;
  end
  else
  if p='2' then
  begin
    if mp+50>mpmax
    then
    begin
    mp:=mpmax;
    writeln('魔力：',mpmax,'/',mp);
    money:=money-100;
    end
    else
    begin
    mp:=mp+50;
    money:=money-100;
    writeln('魔力：',mpmax,'/',mp);
    end;
  end;
end;
if money<=0 then writeln('店老板：没钱？滚！！！！！');
end;
procedure kaishi;
var s,m,n,k,l:integer;
  p:char;
begin
write('请选择角色：1.剑士 2.魔法师 :');
readln(l);
if l=1 then
begin
  hp:=500;
  hpmax:=hp;
  mp:=30;
  mpmax:=mp;
  money:=1000;
  fy:=100;
  dengji:=1;
  atc:=150;
  mc:=50;
  zhiye:=1;
end;
if l=2 then
begin
  hp:=300;
  hpmax:=hp;
  mp:=50;
  mpmax:=mp;
  money:=1000;
  fy:=50;
  dengji:=1;
  atc:=80;
  mc:=150;
  zhiye:=2;
end;

randomize;
repeat
  writeln('hp:',hpmax,'/',hp,' ','mp:',mpmax,'/',mp,' ','money:',money);
  m:=1;
  n:=1;
  writeln('请输入：F：移动 B：购买物品 Z:人物状态 M:地图 Q?离开');
  readln(p);
  if p='F' then
  begin
    writeln('W:向前 S:向下 A：向左 D:向右 ');
    readln(p);
    if p='W'
    then
    begin
    m:=m+1;
    if m>10 then
    begin
      writeln('无法前进!');
      m:=m-1;
    end
    else
    if ma[m,n]=0 then writeln('什么都没有......');
    if ma[m,n]=1 then moguaishou;
    end;
  end;
  if p='B' then shangdian;
  if p='Z' then ziliao;
  if p='M' then map;
until p='Q';
end;

procedure shuoming;
var p:char;
begin
writeln('************************游戏说明******************************');
writeln('* 你是一个英雄，在峡谷里前进，前方可能有妖怪，也可能有宝物。 *');
writeln('* 你遇到野兽时，你可以用身上的东西向他攻击。按G键是攻击，按 *');
writeln('* T键是逃跑，但可能逃不掉哦！你开始只有一把小刀，以后可能拣 *');
writeln('* 到其它宝物，要加油哦！你的任务是找到传说中的宝物－CSW之剑 *');
writeln('* 然后打败大魔王（剧情比较老土，请见谅......）           *');
writeln('*************************************************************');
writeln('好了，开始游戏吧！Y/N');
readln(p);
if p='N' then halt
      else if p='Y' then kaishi
                else
                begin
                  writeln('耍我，死把!');
                  readln;
                  halt;
                end;
end;

begin
writeln('************************游戏开始****************************');
writeln('*           F:如何游戏:说明游戏方式             *');
writeln('*           B:开始游戏：进入游戏               *');
writeln('*           Q:退出游戏：离开游戏               *');
writeln('**************************************************************');
writeln('请输入：');
readln(a);
if a='F' then shuoming
      else if a='B' then kaishi
                else if a='Q' then halt;
end.
