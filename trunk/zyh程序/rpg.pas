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
writeln('*******��ͼ********');
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
writeln('********************��������**********************');
writeln('* �ȼ���',dengji,'                    *');
writeln('* ������',hpmax,'/',hp,'              *');
writeln('* ħ����',mpmax,'/',mp,'              *');
writeln('* ��Ǯ��',money,'                    *');
writeln('* ��������/���ھ��飺',dengji*100+30,'/',JY,'*');
writeln('**************************************************');
end;
procedure shengji;
begin
if jy>=dengji*100+30 then
begin
  writeln('�����ˣ���ҹ��ƣ���Ż������������������');
  dengji:=dengji+1;
  jy:=jy-dengji*100-30;
  atc:=atc+dengji*2+10;
  fy:=fy+dengji*2+10;
  mcp:=mcp+dengji*2+4;
  hpmax:=hpmax+dengji*10;
  mpmax:=mpmax+dengji*8;
  writeln('#############����###########');
  writeln('�ȼ���',dengji);
  hp:=hpmax;
  writeln('������',hpmax,'/',hp);
  mp:=mpmax;
  writeln('ħ����',mpmax,'/',mp);
  writeln('��������',atc);
  writeln('��������',fy);
  writeln('ħ������',mc);
end;
end;

procedure moguaishou;
var p:char;
  z,ghp,fyl,gatc,hp0,jy,mcp:integer;
begin
gatc:=random(100)+dengji*10;
writeln('�������˹��ޣ����ڣ�Y��ս����N�����ܡ�Y/N');
readln(p);
ghp:=random(100)*20;
hp0:=ghp;
fyl:=fy;
if p='Y' then
begin
writeln('ս����ʼ');
while (hp>0)and(ghp>0) do
begin
  writeln('���HP��',hpmax,'/',hp,' ','MP:',mpmax,'/',mp,' ','����',ql);
  writeln('���޵�HP��',hp0,'/',ghp);
  writeln('������1����ͨ���� 2��ħ������ 3����ɱ 4:���� 5:���� ');
  readln(p);
  z:=random(11);
  if z=5 then
  begin
    if p='1' then
    begin
    write('������Ч��');
    readln;
    end;
    if p='2' then
    begin
    write('û����');
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
      write('��ܹ��ޣ� ����+',hp0);
      readln;
      z:=random(5);
      jy:=jy+hp0;
      if z=2 then writeln('�õ���Ǯ',(hp0 div 10)*10);
      money:=money+((hp0 div 10)*10);
      readln;
      ql:=ql+10;
      break;
    end
    else
    begin
      write('�����ܵ��˺���HP-',atc,'��HP��',hp0,'/',ghp);
      readln;
      ql:=ql+10;
    end;
    end;
    if p='2'
    then
    begin
    begin
      writeln('ѡ��ħ����');
      if dengji>=0 then writeln('1.���򣺳�ʼ������110 mp-2');
      if dengji>=2 then writeln('2.���棺��ʼ������150 mp-5');
      if dengji>=4 then writeln('3.���򣺳�ʼ������200������Ч��������һ�غϲ��ܹ��� mp-10');
      if dengji>=6 then writeln('4.��������ʼ������250������Ч�����������غϲ��ܹ��� mp-20');
      if dengji>=8 then writeln('5.�ͻ����񣺳�ʼ������400,����Ч��������ÿ�غ�hp����10�� mp-40');
      if dengji>=10 then writeln('6.����������ʼ������450������Ч�����������غϲ��ܹ��� mp-40');
      readln(p);
      if p='1' then
      if mp>=2
      then
      begin
        mp:=mp-2;
        mcp:=110+mc;
      end
      else writeln('ħ��������');
      if p='2' then
      if mp>=5
      then
      begin
        mp:=mp-5;
        mcp:=150+mc;
      end
      else writeln('ħ��������');
      if p='3' then
      if mp>=10
      then
      begin
        mp:=mp-10;
        mcp:=200+mc;
      end
      else writeln('ħ��������');
      if p='4' then
      if mp>=20
      then
      begin
        mp:=mp-20;
        mcp:=250+mc;
      end
      else writeln('ħ��������');
      if p='5' then
      if mp>=40
      then
      begin
        mp:=mp-40;
        mcp:=400+mc;
      end
      else writeln('ħ��������');
      if p='6' then
      if mp>=40
      then
      begin
        mp:=mp-40;
        mcp:=400+mc;
      end
      else writeln('ħ��������');
    end;
    ghp:=ghp-mcp;
    if ghp<0
    then
    begin
      write('��ܹ��ޣ� ����+',(hp0 mod 10+10));
      readln;
      jy:=jy+hp0;
      z:=random(5);
      if z=3 then writeln('�õ���Ǯ',(hp0 div 10*10));
      money:=money+((hp0 div 10)*10);
      ql:=ql+10;
      break;
    end
    else
    begin
      write('�����ܵ��˺���HP-',mcp,'��HP��',hp0,'/',ghp);
      readln;
      ql:=ql+10;
    end;
    end;
    if p='4' then fyl:=fy*2;
    if p='5' then begin
                z:=random(4);
                if z=3 then writeln('����ʧ�ܣ�')
                    else exit;
              end;
  end;
  writeln('�غϽ���');
  writeln('���޹�����');
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
                  write('�ɹ�������');
                  readln;
                end
                else
                begin
                  hp:=hp+fyl-gatc;
                  if hp>0 then
                      begin
                        write('���HP��',gatc-fyl,' ',hpmax,'/',hp);
                        readln;
                      end
                      else
                      begin
                        write('����ˣ����¿�ʼ��!');
                        readln;
                        halt;
                      end;
                end;
        write('�غϽ���');
        readln;
      end;
  end;
  shengji;
end;
end;

procedure shangdian;
var p:char;
begin
writeln('*********************�̵�****************************');
if money<=0 then
begin
  writeln('�ϰ壺���ﲻ��ӭ��⵰������������');
  exit;
end
else
writeln('1.��ҩ��HP+50 100Ԫ 2.��ҩ MP+50 100Ԫ');
write('(���̵��ֽ�����������ҩƷ����Ҫʲô��1/2 Q:Quit)');
while (money>0)and(p<>'Q') do
begin
  readln(p);
  if p='1' then
  begin
    if hp+100>hpmax
    then
    begin
    hp:=hpmax;
    writeln('������',hpmax,'/',hp);
    money:=money-100;
    end
    else
    begin
    hp:=hp+100;
    writeln('������',hpmax,'/',hp);
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
    writeln('ħ����',mpmax,'/',mp);
    money:=money-100;
    end
    else
    begin
    mp:=mp+50;
    money:=money-100;
    writeln('ħ����',mpmax,'/',mp);
    end;
  end;
end;
if money<=0 then writeln('���ϰ壺ûǮ��������������');
end;
procedure kaishi;
var s,m,n,k,l:integer;
  p:char;
begin
write('��ѡ���ɫ��1.��ʿ 2.ħ��ʦ :');
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
  writeln('�����룺F���ƶ� B��������Ʒ Z:����״̬ M:��ͼ Q?�뿪');
  readln(p);
  if p='F' then
  begin
    writeln('W:��ǰ S:���� A������ D:���� ');
    readln(p);
    if p='W'
    then
    begin
    m:=m+1;
    if m>10 then
    begin
      writeln('�޷�ǰ��!');
      m:=m-1;
    end
    else
    if ma[m,n]=0 then writeln('ʲô��û��......');
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
writeln('************************��Ϸ˵��******************************');
writeln('* ����һ��Ӣ�ۣ���Ͽ����ǰ����ǰ�����������֣�Ҳ�����б�� *');
writeln('* ������Ұ��ʱ������������ϵĶ���������������G���ǹ������� *');
writeln('* T�������ܣ��������Ӳ���Ŷ���㿪ʼֻ��һ��С�����Ժ���ܼ� *');
writeln('* ���������Ҫ����Ŷ������������ҵ���˵�еı��CSW֮�� *');
writeln('* Ȼ���ܴ�ħ��������Ƚ������������......��           *');
writeln('*************************************************************');
writeln('���ˣ���ʼ��Ϸ�ɣ�Y/N');
readln(p);
if p='N' then halt
      else if p='Y' then kaishi
                else
                begin
                  writeln('ˣ�ң�����!');
                  readln;
                  halt;
                end;
end;

begin
writeln('************************��Ϸ��ʼ****************************');
writeln('*           F:�����Ϸ:˵����Ϸ��ʽ             *');
writeln('*           B:��ʼ��Ϸ��������Ϸ               *');
writeln('*           Q:�˳���Ϸ���뿪��Ϸ               *');
writeln('**************************************************************');
writeln('�����룺');
readln(a);
if a='F' then shuoming
      else if a='B' then kaishi
                else if a='Q' then halt;
end.
