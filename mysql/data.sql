    SET NAMES UTF8;
    DROP DATABASE IF EXISTS bookshop;
    CREATE DATABASE bookshop charset=UTF8;
    USE bookshop;

    #最新资讯表(latest_news)
    create table latest_news(
        ln_id int primary key auto_increment,
        ln_pic varchar(32),     #图片路径 
        ln_title varchar(128),   #大标题
        ln_data DATE,        #发表时间
        ln_littletitle varchar(32),  #小标题
        ln_speaker varchar(16),   #主讲嘉宾
        ln_organizers varchar(128),   #主办方
        ln_place varchar(32),       #地点
        ln_time varchar(16),    #直播时间
        ln_address varchar(255) #直播地址
    );

    INSERT INTO latest_news VALUES(null,'img/latest_news/1.jpeg','人生大角色,京剧了不起','2021-07-07','《大宅门》导演郭宝昌新书见面会','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','Bilibili：生活读书新知三联书店直播间(UID：22439280),京东直播：搜索“三联书店”进入直播间,天猫直播：搜索“三联书店旗舰店”进入直播间,三联书店视频号');
    INSERT INTO latest_news VALUES(null,'img/latest_news/2.jpeg','
    史前的现代化：回到一万年前的中国 | 活动&直播预告','2021-06-18','回到一万年前的中国','赵保乐','首都图书馆,生活·读书·新知三联书店','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','6月19日(周六) 14:30','Bilibili：生活读书新知三联书店直播间(UID：22439280),京东直播：搜索“三联书店”进入直播间,天猫直播：搜索“三联书店旗舰店”进入直播间');
    INSERT INTO latest_news VALUES(null,'img/latest_news/3.jpeg','
    “青春同心•永跟党走”一起读党史分享会举办','2021-05-25','学好百年党史 凝聚前进力量','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','');
    INSERT INTO latest_news VALUES(null,'img/latest_news/4.jpeg','三联·新知大会 | 第三季','2021-03-29','提问历史,想象未来','常怀颖','生活·读书·新知三联书店,三联生活传媒','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','2021年4月3日～4月24日每周末','Bilibili：生活读书新知三联书店直播间(UID：22439280),京东直播：搜索“三联书店”进入直播间,天猫直播：搜索“三联书店旗舰店”进入直播间,三联书店视频号');
    INSERT INTO latest_news VALUES(null,'img/latest_news/5.jpeg','书单 | 三联书店2020年度好书','2020-12-31','三联书店年度好书','常怀颖','生活·读书·新知三联书店,三联生活传媒','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','2021年4月3日～4月24日每周末','');

    INSERT INTO latest_news VALUES(null,'img/latest_news/6.jpeg','何浩：一本艺术书的诞生 | 活动&直播预告','2020-12-24','一本艺术书的诞生','何浩','生活·读书·新知三联书店','三联韬奋书店(美术馆店)二层活动区','12月27日(周日) 14:30-16:30','Bilibili：生活读书新知三联书店直播间(UID：22439280)');
    INSERT INTO latest_news VALUES(null,'img/latest_news/7.jpeg','直播预告 | 放宽历史的视界：历史图书的三联读法','2020-11-23','放宽历史的视界','曾诚,张龙','北京市文资中心,北京广播电视台,京东图书,生活·读书·新知三联书店,三联韬奋书店','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','11月24日(周二) 19:00-21:00','Bilibili：生活读书新知三联书店直播间(UID：22439280),京东直播：搜索“三联书店”进入直播间');
    INSERT INTO latest_news VALUES(null,'img/latest_news/8.jpeg','《范用存牍》《凛冬将至》入选深圳读书月“年度十大好书”','2020-11-16','新闻来源：深圳书展(公众号ID：gh_aece60bd9d0a)','毛尖','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','');
    INSERT INTO latest_news VALUES(null,'img/latest_news/9.jpeg','传统文化的三联读法｜附直播预告及推荐书目','2020-09-27','传统文化学习交流','舒　炜,陈义望','生活·读书·新知三联书店','三联韬奋书店二层活动区','09月28日(周一)19:00','Bilibili：生活读书新知三联书店直播间(UID：22439280),京东直播：搜索“三联书店”进入直播间');
    INSERT INTO latest_news VALUES(null,'img/latest_news/10.jpeg','直播预告：社会大众需要怎样的历史读物？','2020-09-17','满足大众的读物','辛德勇','生活·读书·新知三联书店','三联韬奋书店二层活动区','09月18日(周五)19:00','Bilibili：生活读书新知三联书店直播间(UID：22439280),京东直播：搜索“三联书店”进入直播间');

    INSERT INTO latest_news VALUES(null,'img/latest_news/11.jpeg','《胡天汉月映西洋》 荣获第十五届文津图书奖','2020-09-16','胡天汉月映西洋','卜键','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','');
    INSERT INTO latest_news VALUES(null,'img/latest_news/12.jpeg','活动预告 | 中华文明五千年的考古证据：考古队长带你“云”游良渚博物院','2020-06-04','中华文明五千年的考古证据','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','Bilibili：生活读书新知三联书店直播间(UID：22439280),京东直播：搜索“三联书店”进入直播间,天猫直播：搜索“三联书店旗舰店”进入直播间,三联书店视频号');
    INSERT INTO latest_news VALUES(null,'img/latest_news/13.jpeg','新知大会2020：身体•生命•世界','2020-04-23','人文与科学的视角','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','2020年4月22日、23日 每晚19:30-21:00','三联书店三联书情抖音号(ID：sanlianshutong),三联书店三联书情快手号(ID：sanlianshutong)');
    INSERT INTO latest_news VALUES(null,'img/latest_news/14.jpeg','《三联韬奋书店重张开业','2019-12-31','坚守初心,深耕阅读,用书向读者打招呼','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','');
    INSERT INTO latest_news VALUES(null,'img/latest_news/15.jpeg','波斯：另一个“中国”','2019-11-12','《波斯笔记》新书发布会','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','');

    INSERT INTO latest_news VALUES(null,'img/latest_news/16.jpeg','“陈寅恪与近代中国的学术与思想”学术研讨会举办','2019-11-01','纪念陈寅恪先生逝世五十周年','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','');
    INSERT INTO latest_news VALUES(null,'img/latest_news/17.jpeg','围绕中国文化两大话语权,展现主题社风采','2019-09-09','三联书店参展第26届北京国际图书博览会','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','');
    INSERT INTO latest_news VALUES(null,'img/latest_news/18.jpeg','第26届北京国际图书博览会 黄坤明同志视察三联书店展区','2019-08-23','北京国际图书博览会','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','');
    INSERT INTO latest_news VALUES(null,'img/latest_news/19.jpeg','北京市委书记蔡奇调研三联韬奋书店三里屯店','2019-07-02','三联韬奋书店三里屯店','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','');
    INSERT INTO latest_news VALUES(null,'img/latest_news/20.jpeg','“朗读4•23——在书店,爱上阅读”主题活动在三联韬奋书店成功举办','2019-04-30','朗读','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','');

    INSERT INTO latest_news VALUES(null,'img/latest_news/21.jpeg','《汉字与中华文化十讲》《左图右史与西学东渐》入选“中国好书”“文津图书奖”','2019-04-28','中国好书和文津图书奖','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','');
    INSERT INTO latest_news VALUES(null,'img/latest_news/22.jpeg','中国出版集团公司领导来店宣布任免决定','2019-04-16','三联书店领导班子调整 肖启明任总经理、总编辑','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','');
    INSERT INTO latest_news VALUES(null,'img/latest_news/23.jpeg','中宣部出版局领导赴《三联生活周刊》《读书》调研','2019-03-20','《三联生活周刊》《读书》调研','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','');
    INSERT INTO latest_news VALUES(null,'img/latest_news/24.jpeg','生活•读书•新知三联书店2019年度工作会议召开','2019-01-31','会议召开','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','');
    INSERT INTO latest_news VALUES(null,'img/latest_news/25.jpeg','三联书店举办2019年新年作者聚谈会','2019-01-25','聚谈会','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','Bilibili：生活读书新知三联书店直播间(UID：22439280),京东直播：搜索“三联书店”进入直播间,天猫直播：搜索“三联书店旗舰店”进入直播间,三联书店视频号');

    INSERT INTO latest_news VALUES(null,'img/latest_news/26.jpeg','三联书店2018年度十本好书','2018-12-26','十大好书','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','');
    INSERT INTO latest_news VALUES(null,'img/latest_news/27.jpeg','生活·读书·新知三联书店召开2019年度选题论证会','2018-12-14','选题论证会','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','Bilibili：生活读书新知三联书店直播间(UID：22439280),京东直播：搜索“三联书店”进入直播间,天猫直播：搜索“三联书店旗舰店”进入直播间,三联书店视频号');
    INSERT INTO latest_news VALUES(null,'img/latest_news/28.jpeg','《左图右史与西学东渐》获选深圳读书月“年度推荐图书”(附书单)','2021-07-07','左图右史与西学东渐','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','');
    INSERT INTO latest_news VALUES(null,'img/latest_news/29.jpeg','黄坤明同志到三联韬奋书店三里屯店调研','2018-09-12','三联韬奋书店三里屯店','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','');
    INSERT INTO latest_news VALUES(null,'img/latest_news/30.jpeg','新阅读时代,知识传播如何“升级换代”','2018-08-22','新阅读时代','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','Bilibili：生活读书新知三联书店直播间(UID：22439280),京东直播：搜索“三联书店”进入直播间,天猫直播：搜索“三联书店旗舰店”进入直播间,三联书店视频号');

    INSERT INTO latest_news VALUES(null,'img/latest_news/31.jpeg','生活·读书·新知三联书店召开2018年年中经营工作会议','2018-08-08','2018年工作会议','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','');
    INSERT INTO latest_news VALUES(null,'img/latest_news/32.jpeg','以党建促发展 以发展强党建','2018-07-20','中国出版集团领导在生活·读书·新知三联书店进行“强党建、促发展”专题调研','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','');
    INSERT INTO latest_news VALUES(null,'img/latest_news/33.jpeg','《焦点访谈》报道三联书店“走出去”成果','2018-05-24','焦点访谈','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','Bilibili：生活读书新知三联书店直播间(UID：22439280),京东直播：搜索“三联书店”进入直播间,天猫直播：搜索“三联书店旗舰店”进入直播间,三联书店视频号');
    INSERT INTO latest_news VALUES(null,'img/latest_news/34.jpeg','《全球景观中的中国古代艺术》入选2017年度“中国好书”','2018-04-25','中国古代艺术','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','');
    INSERT INTO latest_news VALUES(null,'img/latest_news/35.jpeg','三联韬奋书店三里屯店正式开业','2018-04-24','三里屯出现新“地标”,“深夜书房”再添一盏灯','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','');

    INSERT INTO latest_news VALUES(null,'img/latest_news/36.jpeg','三联新知大会,用知识和趣味打败无聊','2018-04-18','新知大会','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','Bilibili：生活读书新知三联书店直播间(UID：22439280),京东直播：搜索“三联书店”进入直播间,天猫直播：搜索“三联书店旗舰店”进入直播间,三联书店视频号');
    INSERT INTO latest_news VALUES(null,'img/latest_news/37.jpeg','三联韬奋书店荣获2018年伦敦书展国际出版业卓越奖•“中国书店精神奖”','2018-04-12','伦敦书展国际出版业卓越奖','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','');
    INSERT INTO latest_news VALUES(null,'img/latest_news/38.jpeg','2017年度中国好书入围书目','2018-03-23','2017年度好书','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','');
    INSERT INTO latest_news VALUES(null,'img/latest_news/39.jpeg','《三联生活周刊》《读书》荣获第三届全国“百强报刊”','2018-03-13','百强报刊','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','');
    INSERT INTO latest_news VALUES(null,'img/latest_news/40.jpeg','三联韬奋书店学雷锋志愿服务站获评“首都学雷锋志愿服务示范站”荣誉称号','2018-03-13','学雷锋,认真踏实做事','赵保乐','首都图书馆,生活·读书·新知三联书店,活字文化','首都图书馆A座二层报告厅(A座东侧玻璃门一层)','7月10日(周六) 14:30','');

    #公告表(notice)
    create table notice(
        no_id int primary key auto_increment,
        no_pic varchar(32),     #图片路径 
        no_title varchar(128),   #大标题
        no_data DATE        #发表时间
    );
    INSERT INTO notice VALUES(null,'img/notice/1.jpeg','世界读书日 三联书店店史馆正式开馆','2021-05-25');
    INSERT INTO notice VALUES(null,'img/notice/2.jpeg','沈昌文先生遗体告别仪式在京举行','2021-01-15');
    INSERT INTO notice VALUES(null,'img/notice/3.jpeg','沈昌文同志生平','2021-01-15');
    INSERT INTO notice VALUES(null,'img/notice/4.jpeg','沈昌文同志讣告','2021-01-11');
    INSERT INTO notice VALUES(null,'img/notice/5.jpeg','生活•读书•新知三联书店有限公司图书报废(材料残值)项目遴选结果公告','2021-01-25');
    INSERT INTO notice VALUES(null,'img/notice/6.jpeg','“全球华人国学大奖”揭晓,葛承雍、干春松、谢湜、赵金刚作品获选(附书单)','2020-12-17');
    INSERT INTO notice VALUES(null,'img/notice/7.jpeg','三联书店获“2020年度北京市版权保护示范单位”称号','2020-12-09');
    INSERT INTO notice VALUES(null,'img/notice/8.jpeg','聚焦“一带一路”文明交流,助力中国学术世界发声','2020-10-22');
    INSERT INTO notice VALUES(null,'img/notice/9.jpeg','创刊93年,复刊24年,这本杂志何以“精品”？','2019-08-26');
    INSERT INTO notice VALUES(null,'img/notice/10.jpeg','如何科学地吃掉一只恐龙？','2019-07-24');
    INSERT INTO notice VALUES(null,'img/notice/11.jpeg','《国学指要》新书首发式暨“中国文化的形与神”文化访谈活动在西安举办','2019-07-16');
    INSERT INTO notice VALUES(null,'img/notice/12.jpeg','幸福：从心理健康开始','2019-07-16');
    INSERT INTO notice VALUES(null,'img/notice/13.jpeg','一场天时、地利、人和的张大千讲座','2019-07-03');
    INSERT INTO notice VALUES(null,'img/notice/14.jpeg','《三联生活周刊》入选“期刊主题宣传好文章”','2019-07-02');
    INSERT INTO notice VALUES(null,'img/notice/15.jpeg','《三联生活周刊》编辑部开展“走进高校”系列活动','2019-04-30');
    INSERT INTO notice VALUES(null,'img/notice/16.jpeg','春日有书相伴,勿负大好时光','2019-04-12');
    INSERT INTO notice VALUES(null,'img/notice/17.jpeg','我与村民自治三十年•《中国农村村民自治》(增订本)发布会召开','2018-11-19');
    INSERT INTO notice VALUES(null,'img/notice/18.jpeg','美食不光是物质的','2018-11-15');
    INSERT INTO notice VALUES(null,'img/notice/19.jpeg','《〈红楼梦〉与长白山文化》新书发布会举办','2018-11-15');
    INSERT INTO notice VALUES(null,'img/notice/20.jpeg','路英勇：擦亮三联品牌,做文化建设的探索先锋','2018-10-29');
    INSERT INTO notice VALUES(null,'img/notice/21.jpeg','王佐良先生手迹展在北京外国语大学开展','2018-09-27');
    INSERT INTO notice VALUES(null,'img/notice/22.jpeg','发掘传播文化自信','2018-09-21');
    INSERT INTO notice VALUES(null,'img/notice/23.jpeg','三联的好书气质','2018-09-21');
    INSERT INTO notice VALUES(null,'img/notice/24.jpeg','姑苏城中新书房 三联精品尽呈现','2018-08-31');
    INSERT INTO notice VALUES(null,'img/notice/25.jpeg','生活·读书·新知三联书店参加北京国际图书博览会,实施“走出去”战略成果丰硕','2018-08-31');
    INSERT INTO notice VALUES(null,'img/notice/26.jpeg','任尔飓风兴波浪,但留书香满申城','2018-08-29');
    INSERT INTO notice VALUES(null,'img/notice/27.jpeg','王小波：特立独行的生与死','2018-08-29');
    INSERT INTO notice VALUES(null,'img/notice/28.jpeg','又“见面”了,“上海女儿”','2018-08-29');
    INSERT INTO notice VALUES(null,'img/notice/29.jpeg','《艺•述》讲述他的艺术人生','2018-08-29');
    INSERT INTO notice VALUES(null,'img/notice/30.jpeg','永不终结的“浪漫”','2018-08-14');
    INSERT INTO notice VALUES(null,'img/notice/31.jpeg','《来自中国的礼物》新书首发暨“新知文库”100种推介会在深举办','2018-07-31');
    INSERT INTO notice VALUES(null,'img/notice/32.jpeg','谁在寻找夏朝','2018-07-30');
    INSERT INTO notice VALUES(null,'img/notice/33.jpeg','安意如经典作品《再见故宫》签售会在全国书博会期间成功举办','2018-07-27');
    INSERT INTO notice VALUES(null,'img/notice/34.jpeg','迈进新时代 拥抱新阅读','2018-07-27');
    INSERT INTO notice VALUES(null,'img/notice/35.jpeg','创造这一切的是爱啊：二次元文化的“破壁之旅”','2018-06-20');
    INSERT INTO notice VALUES(null,'img/notice/36.jpeg','新时代新知：在质疑中不断更新','2018-05-29');
    INSERT INTO notice VALUES(null,'img/notice/37.jpeg','《阅读力》出版一周年散记','2018-05-14');
    INSERT INTO notice VALUES(null,'img/notice/38.jpeg','《独立日4：我能去你家看看吗？》新书发布会暨“1平米家居展”在京举行','2018-04-25');
    INSERT INTO notice VALUES(null,'img/notice/39.jpeg','世界阅读日：拒绝知识胶囊,拥抱靠谱新知','2018-04-25');
    INSERT INTO notice VALUES(null,'img/notice/40.jpeg','王小波与中国当代文化','2018-04-12');
    INSERT INTO notice VALUES(null,'img/notice/41.jpeg','唐晓峰教授谈李希霍芬的地理学与丝绸之路','2018-03-29');
    INSERT INTO notice VALUES(null,'img/notice/42.jpeg','“复活”古典白话故事经典,“国韵故事汇”与“国韵小小说”在沪首发','2018-03-27');
    INSERT INTO notice VALUES(null,'img/notice/43.jpeg','都市折叠下的女工故事','2018-03-12');
    INSERT INTO notice VALUES(null,'img/notice/44.jpeg','2017年度“书店里的大学公开课” | 课堂笔记汇总','2018-02-11');
    INSERT INTO notice VALUES(null,'img/notice/45.jpeg','《蒙古国纪行》新书座谈','2018-02-02');
    INSERT INTO notice VALUES(null,'img/notice/46.jpeg','变化于形 坚守在心','2018-01-24');
    INSERT INTO notice VALUES(null,'img/notice/47.jpeg','我们把敦煌壁画拍成动画,做成口红','2018-01-17');
    INSERT INTO notice VALUES(null,'img/notice/48.jpeg','活动预告 ｜ 敦煌石窟艺术的观看之道','2018-01-04');


    #作者表(author)
    create table author(
        au_id int primary key auto_increment,
        au_pic varchar(32),     #图片路径 
        au_name varchar(4),      #作者姓名
        au_life varchar(128),   #生平
        au_work varchar(255)   #著作
    );
    INSERT INTO author VALUES(null,'img/author/1.gif','夏衍','夏衍(1900-1995)浙江杭州人.中国著名文学、电影、戏剧作家,文艺评论家,翻译家,社会活动家.','主要著作：《夏衍杂文随笔集》(1980)、《懒寻旧梦录》(1985,2000).');
    INSERT INTO author VALUES(null,'img/author/2.gif','周有光','周有光,1906年生,江苏常州人.语言文字学家.','主要著作：《语文闲谈》“初编”上下册(1995)、“续编”上下册(1997)、“三编”上下册(2000),《新时代的新语文》(1999),《现代文化的冲击波》(2000),《21世纪的华语和华文》(2002),《百岁新稿》(2005),《汉语拼音  文化津梁》(2007).');
    INSERT INTO author VALUES(null,'img/author/3.gif','钱锺书','钱锺书(1910－1998)字默存,号槐聚,江苏无锡人.中国近代著名作家、文学研究家.','主要著作：《钱锺书集》(2001),收录了作者的《谈艺录》、《管锥编》、《宋诗选注》、《七缀集》、《围城》、《人•兽•鬼》、《写在人生边上》、《人生边上的边上》、《石语》、《槐聚诗存》.');
    INSERT INTO author VALUES(null,'img/author/4.gif','杨绛','杨绛,1911年生,原名杨季康,祖籍江苏无锡.作家、学者、翻译家.','主要著作：《干校六记》(1981)、《将饮茶》(1987)、《洗澡》(1988)、《杂忆与杂写》(1994)、《我们仨》(2003).');
    INSERT INTO author VALUES(null,'img/author/5.gif','季羡林','季羡林,1911年生,山东清平人.北京大学东语系教授.','主要著作有：《中印文化关系史论文学》(1982).');
    INSERT INTO author VALUES(null,'img/author/6.gif','黄苗子','黄苗子,1913年生,广东中山人.美术史家、美术评论家、书画家.','主要著作：《画坛师友录》(2000,2007)、《艺林一枝》(2003)、《茶酒闲聊》(2006)、《人文琐屑》(2006)、《雪泥爪印》(2006)、《世说新篇》(2006).');
    INSERT INTO author VALUES(null,'img/author/7.gif','王世襄','王世襄,1914年生,号畅安,福建福州人.国家文物鉴定委员、中央文史研究馆研究馆员.','主要著作：《北京鸽哨》(1989)、《锦灰堆》(三卷,1999)、《锦灰二堆》(二卷,2003)、《锦灰三堆》(2005)、《锦灰不成堆》(2007)、《自珍集》(2003,2007)、《明式家具研究》(2007,2008).');
    INSERT INTO author VALUES(null,'img/author/8.gif','丁聪','丁聪,1916年生,上海人.漫画家','主要著作：《丁聪插图集》、《丁聪新漫画》、《丁聪老漫画》、《古趣图》(1、2)、《讽刺画》(1-4)、《文人肖像》(1、2)、《成语故事》.');
    INSERT INTO author VALUES(null,'img/author/9.gif','曹景行','曹景行,1947年生,浙江浦江人.香港凤凰卫视主持人、清华大学新闻与传播学院教授.','主要著作：《随影而行》(2006).');
    INSERT INTO author VALUES(null,'img/author/10.gif','钱理群','钱理群,1939年生,浙江杭州人.退休前为北京大学中文系教授.','主要著作：《与鲁迅相遇》(2003)、《生命的沉湖》(2006).');
    INSERT INTO author VALUES(null,'img/author/11.gif','李泽厚','李泽厚,1930年生,湖南长沙人.哲学家.中国社会科学院哲学研究所研究员.','主要著作：《走我自己的路》(1986),《美学四讲》(1989),“李泽厚作品系列”(2008)――收录了作者的《中国古代思想史论》、《中国近代思想史论》、《中国现代思想史论》、《批判哲学的批判：康德述评》、《历史本体论・己卯五说》、《华夏美学・美学四讲》、《实用理性与乐感文》、《论语今读》、《美的历程》、《杂著集》.');
    INSERT INTO author VALUES(null,'img/author/12.gif','陈原','陈原(1918-2004)广东新会人.出版家、语言学家.曾任商务印书馆总经理、总编辑.1979年参与创办《读书》杂志.','主要著作：《语言与社会生活》(1979)、《书林漫步》(1983,续编1984)、《在语词的密林里》(1991,2005)、《对活录》(1997)等.');
    INSERT INTO author VALUES(null,'img/author/13.gif','黄裳','黄裳,1919年生,山东益都人.','主要著作：《银鱼集》(1985)、《翠墨集》(1985)、《榆下说书》(1981)、《珠还记幸》(1985)及修订本(2006)、《来燕榭少作五种》、《来燕榭文存》等.为《读书》撰稿上百篇,辟有“书林一枝”专栏.');
    INSERT INTO author VALUES(null,'img/author/14.gif','黄宗江','黄宗江,1921年生,浙江瑞安人.表演艺术家,编剧.','主要著作(合著)：《卖艺人家》(1986)、《卖艺黄家》(2000).');
    INSERT INTO author VALUES(null,'img/author/15.gif','杨振宁','杨振宁,1922年生于安徽省合肥市,美籍华裔物理学家.现任清华大学物理系教授.','主要著作：《曙光集》(2007).');
    INSERT INTO author VALUES(null,'img/author/16.gif','范用','范用,1923年生,江苏镇江人.1938年加入读书生活出版社,退休前任三联书店总经理.','主要著作：《我爱穆源》(1994,2008)、《泥土•脚印》(2008)、《泥土•脚印(续编)》(2005,2008),编有《战斗在白区》(2001)、《文人饮食潭》(2004)、《爱看书的广告》(2004)、《买书琐记》(2005)、《我很丑也不温柔》(2006).');
    INSERT INTO author VALUES(null,'img/author/17.gif','陈乐民','陈乐民(1930―2008)浙江湖州人.中国社科院荣誉学部委员,曾任欧洲研究所研究员、所长.','主要著作：《文心文事》(1992)、《有关神的存在和性质的对话》(译作并序,1998)、《欧洲文明的进程》(合著,2003)、《冷眼向洋》(主编兼作者,2000、2007).');
    INSERT INTO author VALUES(null,'img/author/18.gif','资中筠','资中筠,1930年生,湖南耒阳人.中国社科院荣誉学部委员,曾任美国研究所研究员、所长.','主要著作：《冷眼向洋》(主编兼作者,2000、2007).冷眼向洋：百年风云启示录(上下卷)');
    INSERT INTO author VALUES(null,'img/author/19.gif','周振鹤','周振鹤,1941年生,福建厦门人.复旦大学历史地理研究所教授.','主要著作：《随无涯之旅》(1996、2008)、《知者不言》(2008).');
    INSERT INTO author VALUES(null,'img/author/20.gif','陈志华','陈志华,1929年生,浙江宁波人.清华大学建筑学院教授.','主要著作：《楠溪江中游古村落》(1999)、《外国古建筑二十讲》(2002),合编有“乡土瑰宝”系列.
    楠溪江中游古村落--乡土中国');
    INSERT INTO author VALUES(null,'img/author/21.gif','陈来','陈来,1952年生,浙江温州人.北京大学哲学系教授.','主要著作：《古代宗教与伦理》(1996)、《古代思想文化的世界》(2002)、《东亚儒学九论》(2008).');
    INSERT INTO author VALUES(null,'img/author/22.gif','李零','李零,1948年生,山西武乡人.北京大学中文系教授.','主要著作：《简帛古书与学术源流》(2004)、《铄古铸今》(2007)、《去圣乃得真孔子》(2008)、《人往低处走》(2008)等.');
    INSERT INTO author VALUES(null,'img/author/23.jpg','梁小民','梁小民,1943年生,山西霍县人.北京工商大学教授.','主要著作：《经济学的开放》(1999)、《微观经济学纵横谈》(2000)、《宏观经济学纵横谈》(2003)、《经济学原理》(译著,2001).');
    INSERT INTO author VALUES(null,'img/author/24.jpg','赵珩','赵珩,1948年生于北京.北京燕山出版社总编辑.','主要著作：《老饕漫笔》(2001)、《彀外谈屑》(2006).');
    INSERT INTO author VALUES(null,'img/author/25.jpg','陈子善','陈子善,1948年生,上海人.华东师范大学中文系教授.','主要著作：《卖文买书》(1995)、《龙坡杂文》(台静农著,2002)、《文学的前途》(夏志清著,2002).');
    INSERT INTO author VALUES(null,'img/author/26.jpg','朱正琳','朱正琳,1947年生,江西吉安人.曾任央视“读书时间”、“半边天”栏目策划.','主要著作：《里面的故事》(2005).');
    INSERT INTO author VALUES(null,'img/author/27.jpg','徐友渔','徐友渔,1947年生,四川成都人.中国社科院哲学所研究员.','徐友渔');
    INSERT INTO author VALUES(null,'img/author/28.jpg','钱满素','钱满素,1946年生,上海人.中国社科院外文所研究员.','主要著作：《爱默生和中国》(1996)、《美国自由主义的历史变迁》(2006).');
    INSERT INTO author VALUES(null,'img/author/29.jpg','朱学勤','朱学勤,1952年生,上海人.上海大学历史系教授.','主要著作：《风声・雨声・读书声》(1994).');
    INSERT INTO author VALUES(null,'img/author/30.jpg','葛兆光','葛兆光,1950年生于上海,福建人.现为复旦大学文史研究院院长、历史系教授.','主要著作：《屈服史及其他》(2003)、《思想史研究课堂讲录》(2005).');
    INSERT INTO author VALUES(null,'img/author/31.jpg','白谦慎','白谦慎,1955年生,福建安溪人.现任美国波士顿大学艺术系中国艺术史教授.','主要著作：《傅山的世界》(2006).');
    INSERT INTO author VALUES(null,'img/author/32.jpg','陈平原','陈平原,1954年生,广东潮州人.北京大学中文系教授.','主要著作：《北大旧事》(合编,1998)、《看图说书》(2003)、《从文人之文到学者之文》(2004)、《当年游侠人》(2006)、《学者的人间情怀》(2007)、《北京记忆与记忆北京》(主编,2008).');
    INSERT INTO author VALUES(null,'img/author/33.jpg','刘统','刘统,1951年生于北京.上海交通大学历史系教授.','主要著作：《中国的1948年：两种命运的决战》(2006).');
    INSERT INTO author VALUES(null,'img/author/34.jpg','李锐','李锐,1950年生于北京,祖籍四川自贡.作家.','主要著作：《太平风物》(2005).');
    INSERT INTO author VALUES(null,'img/author/35.jpg','赵一凡','赵一凡,1950年,江苏盐城人.中国社科院外文所研究员.','主要著作：《资本主义文化矛盾》(译著,1989)、《美国历史文献》(主编,1989)、《爱默生集》(合译,1993)、《美国文化批评集》(1994)、《从胡塞尔到德里达》(2007).');
    INSERT INTO author VALUES(null,'img/author/36.jpg','查建英','查建英,1959年生,北京人.现任职于纽约India China Institute','主要著作：《八十年代访谈录》.');
    INSERT INTO author VALUES(null,'img/author/37.jpg','姜鸣','姜鸣,1957年生,上海人.历史学者.','主要著作：《中国近代海军史事日志》(1994)、《龙旗飘扬的舰队》(2002)、《天公不语对枯棋》(2006). ');
    INSERT INTO author VALUES(null,'img/author/38.jpg','杨浪','杨浪,1955年生,浙江海宁人.资深媒体人.','主要著作：《地图的发现》(2006)、《地图的发现・续》(2008).');
    INSERT INTO author VALUES(null,'img/author/39.jpg','何怀宏','何怀宏,1954年生,江西清江人.北京大学哲学系教授.','主要著作：《世袭社会及其解体》(1996)、《选举社会及其终结》(1998).');
    INSERT INTO author VALUES(null,'img/author/40.jpg','茅海建','茅海建,1954年生,上海人.华东师范大学历史系教授.','主要著作：《天朝的崩溃》(1995)、《苦命天子》(2006).');
    INSERT INTO author VALUES(null,'img/author/41.jpg','汪丁丁','汪丁丁,1953年生于沈阳,浙江淳安人.现为浙江大学经济学院教授.','主要著作：《我思考的经济学》(1997).');
    INSERT INTO author VALUES(null,'img/author/42.jpg','王军','王军,1969年生,贵州黄平人.现供职于《�望》新闻周刊.','主要著作：《城记》(2003)、《采访本上的城市》(2008).');
    INSERT INTO author VALUES(null,'img/author/43.jpg','吴晓东','吴晓东,1965年生,黑龙江勃利人.北京大学中文系教授.','主要著作：《从卡夫卡到昆德拉》(2003)、《漫读经典》(2008).');

    #图书表(book)
    create table book(
        bo_id int primary key auto_increment,
        bo_pic varchar(64),     #图片路径 
        bo_name varchar(32),      #书名
        bo_author varchar(16),   #作者
        bo_edit varchar(8),   #编辑
        bo_ISBN varchar(32),   #ISBN
        bo_data DATE,       #出版日期
        bo_price decimal(5,2) #定价
    );
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/1.jpg','图说敦煌二五四窟','[中国大陆]陈海涛 陈琦','杨乐','978-7-108-06027-3','2021-06-30',96.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/2.jpg','梦想的诗学','刘自强','刘自强','7-108-00935-8/B.158','1996-06-01',15.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/3.jpg','从卡夫卡到昆德拉','吴晓东','吴晓东','978-7-108-01859-5','2012-11-07',39.60);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/4.jpg','与鲁迅相遇','钱理群','樊燕华','7-108-01881-0/I.340','2012-11-07',29.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/5.jpg','从文人之文到学者之文','陈平原','郑勇','978-7-108-02104-5','2009-04-21',25.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/6.jpg','人类学家的魔法','[美] 斯道金','舒炜','978-7-108-06350-2','2019-01-28',68.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/7.jpg','美国社会科学的起源','[美] 罗斯','舒炜','978-7-108-06179-9','2018-10-22',78.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/8.jpg','马基雅维里与共和主义','[英] 斯金纳','王晨晨','978-7-108-06490-5','2019-06-03',56.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/9.jpg','神学与科学的想象','[美] 阿摩斯•冯肯斯坦','王晨晨','978-7-108-06577-3','2019-09-17',72.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/10.jpg','比亚兹莱在中国','陈子善','郑勇 唐明星','978-7-108-04780-9','2019-05-06',49.00);

    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/11.jpg','窥视日本','妹尾河童','樊燕华','978-7-108-02330-8','2013-09-29',15.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/12.jpg','国家与祭祀','[日]子安宣邦','叶彤','7-108-02654-5','2019-03-04',38.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/13.jpg','亚洲的书籍、文字与设计','杉浦康平','张荷','7-108-02580-9','2009-02-03',63.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/14.jpg','左图右史与西学东渐','陈平原','卫纯','978-7-108-06189-8','2019-06-06',88.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/15.jpg','单一民族神话的起源','小熊英二','叶彤','978-7-108-06520-9','2019-12-26',68.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/16.jpg','大明','Craig Clunas','杨乐','978-7-108-06408-0','2021-08-06',68.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/17.jpg','鹿特丹的伊拉斯谟','Stefan Zweig','杨乐','978-7-108-05330-5','2016-03-30',35.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/18.jpg','唯一的规则','李零','曾诚','978-7-108-03362-8','2013-03-01',29.80);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/19.jpg','钱理群中学讲鲁迅','钱理群','郑勇','978-7-108-03572-1','2010-12-31',38.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/20.jpg','1900年以来的室内设计(增订版)','[英]安妮•梅西','唐明星 邵慧敏','978-7-108-05797-6','2018-03-05',79.00);

    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/21.jpg','尼采最后的文字：反基督者与被钉十字架者','Heinrich Detering','王晨晨','978-7-108-07065-4','2021-06-24',48.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/22.jpg','方济各传 阿奎那传','切斯特顿(G.K. Chesterton)','杨乐','978-7-108-05547-7','2016-06-02',38.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/23.jpg','何为"成田"','宇泽弘文','叶彤','978-7-108-06361-8','2018-12-26',42.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/24.jpg','逃避统治的艺术','詹姆士·斯科特','杨乐','978-7-108-05642-9','2016-02-29',55.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/25.jpg','字里行间读鲁迅','黄乔生','杨乐','978-7-108-05828-7','2017-03-07',42.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/26.jpg','《明儒学案》研究及论学杂著','朱鸿林','杨乐','978-7-108-05431-9','2015-12-15',68.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/27.jpg','北京：当历史成为地理','刘东黎','朱利国','978-7-108-07103-3','2021-04-19',68.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/28.jpg','牛顿与伪币制造者[新知96]','Thomas Levenson','徐国强','978-7-108-06159-1','2019-01-28',42.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/29.jpg','一个犹太人的上海记忆','Liliane Willens','杨乐','978-7-108-06092-1','2018-09-27',48.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/30.jpg','艺术美学讲演录(修订版)','傅谨','杨乐','978-7-108-05860-7','2017-08-28',54.00);

    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/31.jpg','清代价值尺度：货币比价研究','王宏斌','张荷','978-7-108-04539-3','2015-11-25',75.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/32.jpg','视差','布鲁斯·卡明斯','杨乐','978-7-108-05563-7','2016-08-25',46.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/33.jpg','弘一法师书信(增订版)','林子青','杨乐','978-7-108-05548-4','2016-09-28',59.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/34.jpg','拉丁文帝国[新知66]','francoise waquet','杨乐','978-7-108-05610-8','2018-11-23',42.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/35.jpg','三国宴','王川','杨乐','978-7-108-05344-2','2016-01-13',59.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/36.jpg','东方照相记','南无哀','杨乐','978-7-108-06027-3','2021-06-30',96.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/37.jpg','为建筑看相','汉宝德','张静芳','978-7-108-05665-8','2019-01-07',45.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/38.jpg','世界之道','尼古拉·布维耶','杨乐','978-7-108-05465-4','2016-04-21',46.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/39.jpg','树荫的温柔[新知61]','Alain Corbin','杨乐','978-7-108-05537-8','2019-06-12',39.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/40.jpg','新儒学义理要诠','方旭东','曾诚','978-7-108-06484-4','2019-07-01',48.00);

    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/41.jpg','《清华简与先秦经学文献研究》','姚小鸥','马翀','978-7-108-05647-4','2016-11-03',69.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/42.jpg','重读日本战后史','福井绅一','杨乐','978-7-108-05546-0','2016-06-17',38.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/43.jpg','恶，或自由的戏剧(修订版)','吕迪格尔•萨弗兰斯基','李静韬','978-7-108-05989-5','2018-02-01',42.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/44.jpg','和辻哲郎与日本哲学','熊野纯彦','冯金红','978-7-108-06318-2','2018-11-02',48.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/45.jpg','窃听','菲利克斯•略莫尔','唐明星','978-7-108-05722-8','2017-03-16',58.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/46.jpg','费孝通晚年谈话录(1981—2000)','费孝通','唐明星','978-7-108-06416-5','2020-01-02',88.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/47.jpg','长安街与中国建筑的现代化','于水山','杨乐','978-7-108-05394-7','2016-06-12',59.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/48.jpg','为什么是马勒？','诺曼莱布雷希特','樊燕华','978-7-108-06080-8','2018-11-08',59.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/49.jpg','革故鼎新','杨天宏','吴莘','978-7-108-05990-1','2019-03-08',59.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/50.jpg','巴黎,巴黎','大卫.唐尼','李静韬 邵慧敏','978-7-108-05626-9','2016-06-06',42.00);

    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/51.jpg','帝国','雷沙德•卡普钦斯基','徐国强','978-7-108-06244-4','2019-01-30',48.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/52.jpg','色彩列传：黑色','Michel Pastoureau','刘蓉林','978-7-108-05556-9','2019-05-06',66.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/53.jpg','色彩列传：绿色','Michel Pastoureau','刘蓉林','978-7-108-05555-2','2019-06-03',67.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/54.jpg','歌之版图','布鲁斯·查特文','李静韬','978-7-108-05311-4','2016-12-19',39.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/55.jpg','结婚照','文讯杂志社','张杰','978-7-108-05489-0','2016-06-15',78.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/56.jpg','人是可能死于羞愧的','海南大学社会科学研究中心','舒炜','978-7-108-05800-3','2016-10-31',65.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/57.jpg','囚徒、情人与间谍[新知63]','Kristie Macrakis','王振峰','978-7-108-05622-1','2018-11-13',38.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/58.jpg','白话文运动的危机','李春阳','朱利国','978-7-108-05352-7','2016-11-28',68.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/59.jpg','超乎左右之上的鲁迅','李春阳','朱利国','978-7-108-05454-8','2015-11-20',28.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/60.jpg','美食地图集','米娜·霍兰德','黄新萍','978-7-108-05959-8','2017-09-28',49.00);

    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/61.jpg','回到土地(二版)','俞孔坚','朱竞梅','978-7-108-04420-4','2016-06-20',48.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/62.jpg','香界七笺','陈云君','李静韬','978-7-108-05393-0','2016-05-20',75.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/63.jpg','何谓"现代的超克"','[日]子安宣邦','叶彤 李静韬','978-7-108-06083-9','2018-06-06',49.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/64.jpg','八十自述','刘泽华','朱利国','978-7-108-05206-3','2016-11-22',48.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/65.jpg','心灵牧歌','王汉川','朱利国','978-7-108-05778-5','2017-02-24',180.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/66.jpg','游学波士顿','唐东楚','胡群英','978-7-108-05443-2','2015-11-20',38.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/67.jpg','中国汉唐古典舞(1-4)','孙颖','王竞','978-7-108-05228-5','2016-01-26',558.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/68.jpg','武梁祠(精装)','[美]巫鸿','杨乐','978-7-108-05028-1','2021-06-30',65.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/69.jpg','疫警时空','谭健锹','张杰','978-7-108-05286-5','2016-07-21',36.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/70.jpg','纸影寻踪[新知86]','亚历山大•门罗','王振峰','978-7-108-06040-2','2021-03-12',45.00);

    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/71.jpg','大都无城','许宏','曹明明','978-7-108-05534-7','2021-06-09',48.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/72.jpg','伦理学','戴维•罗宾森','樊燕华','978-7-108-05051-9','2018-01-08',28.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/73.jpg','美学','克里斯托弗•库-旺特','樊燕华','978-7-108-05727-3','2020-07-03',28.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/74.jpg','资本主义','丹•克莱因','樊燕华','978-7-108-05734-1','2016-11-15',28.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/75.jpg','心理学','奈杰尔•本松','樊燕华','978-7-108-05274-2','2021-04-15',28.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/76.jpg','启蒙运动','劳埃德•斯宾塞','王振峰','978-7-108-05138-7','2021-04-15',28.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/77.jpg','致命药瘾[新知65]','Cynthia Kuhn','曹明明','978-7-108-05609-2','2021-03-15',45.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/78.jpg','侵华日军兵要地志揭秘','沈克尼','朱利国 马翀','978-7-108-06632-9','2021-06-18',168.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/79.jpg','中国人的情谊','王春瑜','王振峰','978-7-108-05654-2','2016-12-05',35.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/80.jpg','蒙娜丽莎传奇：新发现破解终极谜团[新知69]','Jean-Pierre Isbouts','徐国强','978-7-108-05742-6','2021-03-15',35.00);

    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/81.jpg','十里八村——近代山西乡村社会地理研究','韩茂莉','舒炜','978-7-108-05921-5','2017-10-24',52.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/82.jpg','中国近代外交官群体的形成(1861-1911)','李文杰','孙晓林','978-7-108-05644-3','2016-10-27',59.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/83.jpg','辩护的政治','陈肖生','曾诚','978-7-108-06086-0','2018-04-10',48.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/84.jpg','窥视工作间(新版)','妹尾河童','樊燕华','978-7-108-05562-0','2016-05-24',42.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/85.jpg','窥视舞台','妹尾河童','樊燕华','978-7-108-06137-9','2018-05-28',42.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/86.jpg','儒家文化研究(第七辑)','郭齐勇','李佳','978-7-108-05597-2','2016-07-18',58.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/87.jpg','天朝的崩溃 修订本','茅海建','潘振平 孙晓林','978-7-108-05065-6','2021-07-30',59.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/88.jpg','万变：李零考古艺术史文集','李零','杨乐','978-7-108-05350-3','2017-03-06',128.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/89.jpg','城市的故事[新知60]','John Reader','李佳','978-7-108-05438-8','2018-11-23',45.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/90.jpg','青梅煮酒','周泽雄','龚黔兰','978-7-108-05568-2','2016-11-11',35.00);

    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/91.jpg','窥视欧洲(新版)','妹尾河童','樊燕华','978-7-108-05599-6','2016-05-24',33.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/92.jpg','1942：轰炸东京','王国林','曹明明','978-7-108-05308-4','2016-10-09',49.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/93.jpg','在响雷中炸响','李舫','关丽峡','978-7-108-05328-2','2016-01-07',59.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/94.jpg','迁就与限制','董江阳','邵慧敏','978-7-108-05565-1','2017-02-14',69.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/95.jpg','中国国家治理的制度逻辑','周雪光','曾诚','978-7-108-05833-1','2017-03-03',45.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/96.jpg','时尚与恋物主义[新知83]','David Kunzle','徐国强','978-7-108-05960-4','2021-03-12',59.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/97.jpg','内在经验','乔治·巴塔耶','张艳华','978-7-108-05613-9','2021-06-08',45.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/98.jpg','败在海上','梁二平','张杰','978-7-108-05310-7','2016-02-25',100.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/99.jpg','图说古今帝王','托马斯.克劳威尔','张艳华','978-7-108-05771-6','2018-05-31',118.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/100.jpg','欲望之石：权力、谎言与爱情交织的钻石梦 [新知67]','Tom Zoellner','徐国强','978-7-108-05605-4','2021-03-15',45.00);

    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/101.jpg','欧洲王室另类史[新知64]','迈克尔·法夸尔(Michael Farquhar)','徐国强 曹明明','978-7-108-05646-7','2018-11-28',38.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/102.jpg','云深不知处(增订版)','杨牧之','张荷','978-7-108-04848-6','2019-09-18',48.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/103.jpg','天翻地覆：摇滚改变美国','Glenn C. Altschuler','叶彤','978-7-108-06076-1','2018-06-06',35.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/104.jpg','女人的起源[新知68]','[英]伊莲·摩根','曹明明','978-7-108-05689-4','2021-03-15',32.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/105.jpg','脂肪：文化与物质性[新知75]','克里斯托弗.E.福思 艾莉森.利','王竞','978-7-108-05786-0','2018-11-28',35.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/106.jpg','国学课(精装)','邱燮友','吴莘','978-7-108-05972-7','2017-08-02',42.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/107.jpg','蹇蹇录','陆奥宗光','叶彤','978-7-108-06105-8','2017-12-15',41.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/108.jpg','日俄战争：起源与开战','和田春树','冯金红','978-7-108-06021-1','2018-12-24',148.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/109.jpg','碳时代：文明与毁灭[新知73]','Eric Roston','曹明明','978-7-108-05710-5','2018-11-23',42.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/110.jpg','生命的关键决定[新知79]','彼得.于贝尔','徐国强','978-7-108-05877-5','2018-10-30',39.00);

    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/111.jpg','中国问题：1894—1905年的大国角逐与英国的孤立政策','T.G.Otte','徐国强','978-7-108-06623-7','2019-10-23',58.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/112.jpg','张大千家书(增订版)','包立民','徐国强','978-7-108-05593-4','2016-06-02',48.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/113.jpg','甲午五十年(1895—1945)：媾和·书愤·明耻','陈占彪','周玖龄','978-7-108-06443-1','2019-06-06',58.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/114.jpg','美国外来移民的劳动力市场与经济影响(1965—2005)','欧阳贞诚','胡群英','978-7-108-05325-1','2016-02-01',58.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/115.jpg','论志愿者文化','钱理群','叶彤','978-7-108-06376-2','2018-05-08',58.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/116.jpg','湖上吹水录','江弱水','卫纯','978-7-108-05388-6','2016-07-28',36.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/117.jpg','三汤对话','汤双','卫纯','978-7-108-05475-3','2016-07-28',33.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/118.jpg','驼庵学记','顾之京','卫纯','978-7-108-05558-3','2016-04-18',29.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/119.jpg','两地','林海音','徐国强','978-7-108-05414-2','2016-06-27',30.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/120.jpg','灵台无计逃神矢','严安生','叶彤','978-7-108-06068-6','2017-10-27',40.00);

    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/121.jpg','尼克松录音带(1971—1972)','Luke','叶彤','978-7-108-06586-5','2019-11-01',128.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/122.jpg','日常日本','房雪扉','叶彤','978-7-108-05761-7','2017-03-09',36.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/123.jpg','深解地球[新知129]','Kristie Macrakis','王振峰','978-7-108-06926-9','2020-09-24',49.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/124.jpg','大气：万物的起源[新知72]','Gabrielle Walker','徐国强','978-7-108-05671-9','2021-04-15',35.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/125.jpg','谁是德古拉？[新知140]','[英]吉姆·斯塔迈尔','徐国强','978-7-108-07046-3','2021-03-19',48.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/126.jpg','百年旧痕','赵珩','张荷','978-7-108-05477-7','2017-04-11',48.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/127.jpg','黑丝路：从里海到伦敦的石油溯源之旅[新知77]','詹姆斯•马里奥特','李佳','978-7-108-05756-3','2021-04-15',54.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/128.jpg','歌德','吕迪格尔.萨弗兰斯基','李静韬','978-7-108-06191-1','2019-05-14',88.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/129.jpg','学习考古','陈胜前','曹明明','978-7-108-05988-8','2017-12-19',34.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/130.jpg','一念之差[新知74]','David Spiegelhalter','曹明明','978-7-108-05816-4','2021-04-21',42.00);

    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/131.jpg','通向世界尽头[新知78]','Christian Wolmar','徐国强','978-7-108-05891-1','2018-12-12',39.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/132.jpg','成人之年','米歇尔•莱里斯','张艳华','978-7-108-06221-5','2019-05-15',39.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/133.jpg','长安','朱鸿','曹明明','978-7-108-05919-2','2017-05-08',38.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/134.jpg','晚清政治小说','叶凯蒂','赵庆丰','978-7-108-06496-7','2020-08-21',45.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/135.jpg','城堡的世界：历史、建筑与文化','Ulrich Grossmann','徐国强','978-7-108-06954-2','2020-10-29',88.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/136.jpg','改变世界的七种花[新知98]','Jennifer Potter','李佳','978-7-108-06267-3','2019-06-18',48.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/137.jpg','公共理性与民主理想','谭安奎','张龙','978-7-108-05273-5','2015-11-24',42.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/138.jpg','度量世界[新知94]','罗伯特.P.克里斯著','王振峰','978-7-108-06229-1','2018-10-19',42.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/139.jpg','奥瑞斯提亚','Simon Goldhill','王晨晨','978-7-108-06047-1','2018-01-12',42.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/140.jpg','貌相集','秦颖','王竞','978-7-108-05434-0','2016-04-27',45.00);

    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/141.jpg','阅读希腊悲剧','Simon Goldhill','王晨晨','978-7-108-06591-9','2021-04-15',68.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/142.jpg','上穷碧落：热气球的故事[新知84]','理查德•霍姆斯','张艳华','978-7-108-05943-7','2018-10-30',59.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/143.jpg','听剑楼笔记 云烟','梁锦奎','曹明明','978-7-108-05762-4','2016-11-28',59.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/144.jpg','人类时代[新知71]','迪亚妮.阿克曼','黄新萍','978-7-108-05699-3','2018-04-28',38.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/145.jpg','菜篮子革命','台湾主妇联盟生活消费合作社','王海燕 邵慧敏','978-7-108-05719-8','2017-08-07',39.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/146.jpg','笑的科学：解开笑与幽默感背后的大脑谜团[新知76]','斯科特‧威姆斯','李佳','978-7-108-05794-5','2019-04-25',32.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/147.jpg','静女其姝','章煌远','胡群英','978-7-108-05386-2','2018-10-19',48.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/148.jpg','一缕余香','蔡澜','曹明明','978-7-108-05611-5','2016-11-24',37.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/149.jpg','孤寺老僧','蔡澜','曹明明','978-7-108-05559-0','2016-11-24',36.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/150.jpg','第二条战线','金冲及','马翀','978-7-108-05588-0','2021-05-25',34.00);

    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/151.jpg','幽谷听泉','蔡澜','李佳','978-7-108-05560-6','2016-11-24',39.00);
    INSERT INTO book VALUES(null,'img/booklist/allbook/new_arrival/152.jpg','向开国领袖学习工作方法','金冲及','马翀','978-7-108-05586-6','2021-03-29',28.00);

#用户表(user)
create table user(
    us_id int primary key auto_increment,
    us_name varchar(32), #用户名
    us_password varchar(64), #密码
    us_address varchar(64),  #邮箱
    us_question varchar(32), #密保问题
    us_answer varchar(64),   #答案
    us_price decimal(6,2)  #金额
);
INSERT INTO user VALUES(null,"jack",password("123456"),"163@xinlang.com","您的初中班主任是?","zzz",8888);
INSERT INTO user VALUES(null,"lisa",password("123456"),"163@lisa.com","您的初中班主任是?","xxx",8888);

#用户购物车表(user_shop)
create table user_shop(
    up_id int primary key auto_increment,
    us_name varchar(32), #用户名
    bo_id varchar(10),   #图书id
    bo_pic varchar(64),     #图片路径 
    bo_name varchar(32),      #书名
    bo_author varchar(16),   #作者
    bo_sum  varchar(2),      #购买数量
    bo_price decimal(5,2)   #定价
);

#用户订单表(user_order)
create table user_order(
    uo_id int primary key auto_increment,
    us_name varchar(32), #用户名
    bo_id varchar(10),   #图书id
    bo_pic varchar(64),     #图片路径
    bo_name varchar(32),      #书名
    bo_author varchar(16),   #作者
    bo_price decimal(5,2),   #定价
    bo_sum  varchar(2),      #购买数量
    uo_money decimal(5,2),   #小计
    bo_status varchar(4)    #订单状态
);

#管理员表(ad_login)
create table ad_login(
    ad_id int primary key auto_increment,
    ad_name varchar(32), #管理员账号
    ad_password varchar(64), #管理员密码
    ad_power varchar(8)     #管理员权限
);
INSERT INTO ad_login VALUES(null,"james",password("123456"),"超级管理员");