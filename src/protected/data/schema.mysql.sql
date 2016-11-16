-- MySQL dump 10.11
--
-- Host: localhost    Database: cms
-- ------------------------------------------------------
-- Server version	5.0.96-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_admin`
--

DROP TABLE IF EXISTS `t_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_admin` (
  `uid` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(15) NOT NULL default '',
  `password` char(32) NOT NULL default '',
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_admin`
--

LOCK TABLES `t_admin` WRITE;
/*!40000 ALTER TABLE `t_admin` DISABLE KEYS */;
INSERT INTO `t_admin` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3');
/*!40000 ALTER TABLE `t_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_article`
--

DROP TABLE IF EXISTS `t_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_article` (
  `aid` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(150) default NULL,
  `time` int(10) unsigned NOT NULL default '0',
  `thumb` varchar(255) default NULL,
  `content` text,
  `type` tinyint(1) unsigned NOT NULL default '0',
  `info` varchar(500) default NULL,
  `cid` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_article`
--

LOCK TABLES `t_article` WRITE;
/*!40000 ALTER TABLE `t_article` DISABLE KEYS */;
INSERT INTO `t_article` VALUES (22,'2014年微社区第三期深圳站长俱乐部沙龙',1403844877,'http://img0.bdstatic.com/img/image/shouye/mnsy-11517974232.jpg','<p><b>20</b>14年第三期微社区站长俱乐部沙龙，<img alt=\"Image\" src=\"http://img0.bdstatic.com/img/image/shouye/mnsy-11517974232.jpg\" width=\"142\" height=\"142\" data-image-size=\"142,142\">我们将在深圳腾讯大厦 (广东省深圳市南山区高新科技园中区一路腾讯大厦) 给站长进行培训，本次培训我们给大家带来了微社区产品介绍、如何运营、成功活动分析等课程哦，站长，编辑们，还在等什么？要报名的赶快赶快！本次报名名额不限，请大家珍惜，请勿迟到~（课程完全免费）Android是一种基于Linux的自由及开放源代码的操作系统，主要使用于移动设备，如智能手机和平板电脑，由Google公司和开放手机联盟领导及开发。尚未有统一中文名称，中国大陆地区较多人使用“安卓”或“安致”。Android操作系统最初由Andy Rubin开发，主要支持手机。2005年8月由Google收购注资。2007年11月，Google与84家硬件制造商、软件开发商及电信营运商组建开放手机联盟共同研发改良Android系统。随后Google以Apache开源许可证的授权方式，发布了Android的源代码。第一部Android智能手机发布于2008年10月。Android逐渐扩展到平板电脑及其他领域上，如电视、数码相机、游戏机等。2011年第一季度，Android在全球的市场份额首次超过塞班系统，跃居全球第一。 2013年的第四季度，Android平台手机的全球市场份额已经达到78.1%。[1] 2013年09月24日谷歌开发的操作系统Android在迎来了5岁生日，全世界采用这款系统的设备数量已经达到10亿台。<br></p>',0,'2014年第三期微社区站长俱乐部沙龙，我们将在深圳腾讯大厦 (广东省深圳市南山区高新科技园中区一路腾讯大厦) 给站长进行培训，本次培训我们给大家带来了微社区产品介绍、如何运营、成功活动分析等课程哦，站长，编辑们，还在等什么？要报名的赶快赶快！本次报名名额不限，请大家珍惜，请勿迟到~（课程完全免费）Android是一种基于Linux的自由及开放源代码的操作系统，主要使用于移动设备，如智能手机和平板电脑，由Google公司和开放手机联盟领导及开发。尚未有统一中文名称，中国大陆地区较多人使用“安卓”或“安致”。Android操作系统最初由Andy Rubin开发，主要支持手机。2005年8月由Google收购注资。2007年11月，Google与84家硬件制造商、软件开发商及电信营运',4),(23,'Oracle Linux 7 RC 发布',1403844865,'','<p>Oracle Linux 7 RC 发布，此版本的<a target=\"_blank\" href=\"https://blogs.oracle.com/linux/entry/oracle_linux_7_release_candidate\">发行说明</a>并没有包括太多的信息，但是从 Oracle Linux 7 的<a target=\"_blank\" href=\"http://www.oracle.com/technetwork/server-storage/linux/downloads/oracle-linux-7-2170224.html\">下载页面</a>我们可以发现此版本使用 Linux Kernel。其他更多更新内容可以参考<a target=\"_blank\" href=\"http://www.oschina.net/news/50656/oracle-linux-7-0-beta1\">Oracle Linux 7 beta</a>&nbsp;版本。<br></p><p>Oracle Linux 7 包括两个内核：</p><ul><li><p>Unbreakable Enterprise Kernel Release 3 Update 2 (默认内核)&nbsp;<br></p></li><li><p>Red Hat compatible kernel</p></li></ul><p>Oracle Enterprise Linux是由Oracle公司提供支持的企业级Linux发行。据项目网站称，Oracle以Red Hat Linux做为起始，移除了Red Hat的商标，然后加入了Linux的错误修正。Oracle Enterprise Linux现在是，并旨在保持为，与Red Hat Enterprise Linux完全兼容。</p><p>Oracle Linux 包含了两个内核：</p><ul><li><p>Unbreakable Enterprise Kernel - 紧紧跟随官方 Linux 内核，并且提供最新的功能和优化的性能和稳定性。</p></li><li><p>The Red Hat Compatible Kernel - 直接从 Red Hat Enterprise Linux 编译而来</p></li></ul>',0,'Oracle Linux 7 RC 发布，此版本的发行说明并没有包括太多的信息，但是从 Oracle Linux 7 的下载页面我们可以发现此版本使用 Linux Kernel。其他更多更新内容可以参考Oracle Linux 7 beta&nbsp;版本。Oracle Linux 7 包括两个内核：',4),(24,'I/O大会Google Fit现真身，神似苹果 HealthKit',1403845134,'http://s1.51cto.com/wyfs02/M02/37/07/wKioL1Or6yCitl7LAAD0p91eg70873.jpg','<p><img alt=\"Image\" src=\"http://s1.51cto.com/wyfs02/M02/37/07/wKioL1Or6yCitl7LAAD0p91eg70873.jpg\" width=\"901.3333333333334\" height=\"507\" data-image-size=\"1360,765\"><br></p><p><br></p><p>I/O 2014 大会上，Google 推出旗下智能健康信息平台 Google Fit，后者能组织、整理 Android 上各类保健及健身类应用、以及各类适配运动和健康追踪器、传感器的数据和信息。“一切尽在你的掌握中”——与 HealthKit 一个思路，集中管理体验。</p><p>与 iOS 平台类似，过去保健和健身类应用间不能互相分享数据和信息，这有碍于用户查看自己完整和细致的生理状况，也不利于开发者深化产品体验。随着 Google Fit 的发布，Android 应用间可以互相读取、使用各类健康信息，比如：体重、身高、血压等等——数据种类也与 HealthKit 非常神似。</p><p>目前，已经证实会与 Google Fit 展开深度合作的服务有：Nike、Adidas、Withings、RunKeeper，以及 Basis。</p><p>Google Fit 的开发套件将在数周能向开发者开放。</p><p>本文出自：<a href=\"http://www.36kr.com/p/213169.html\">http://www.36kr.com/p/213169.html</a></p>',0,'I/O 2014 大会上，Google 推出旗下智能健康信息平台 Google Fit，后者能组织、整理 Android 上各类保健及健身类应用、以及各类适配运动和健康追踪器、传感器的数据和信息。“一切尽在你的掌握中”——与 HealthKit 一个思路，集中管理体验。与 iOS 平台类似，过去保健和健身类应用间不能互相分享数据和信息，这有碍于用户查看自己完整和细致的生理状况，也不利于开发者深化产品体验。随着 Google Fit 的发布，Android 应用间可以互相读取、使用各类健康信息，比如：体重、身高、血压等等——数据种类也与 HealthKit 非常神似。目前，已',4),(25,'沁痕博客开通啦',1403846442,'','<p>今天是沁痕博客上线的好日子哦。&nbsp;</p><p>沁痕博客是一个关注站长与互联网创业的IT科技博客，大家可以多多关注，一起分享互联网的那些事儿。</p>',0,'今天是沁痕博客上线的好日子哦。&nbsp;沁痕博客是一个关注站长与互联网创业的IT科技博客，大家可以多多关注，一起分享互联网的那些事儿。',6),(26,'本博客发布文章使用simditor富文本编辑器',1403846617,'http://simditor.tower.im/assets/images/logo.png','<p>Simditor是一个简单快速的富文本编辑器。<br></p><p><img alt=\"Image\" src=\"http://simditor.tower.im/assets/images/logo.png\" width=\"264\" height=\"107\" data-image-size=\"264,107\"><br></p><p>Simditor是Tower开源的所见即所得的在线富文本编辑器。Simditor的理念是保持简单，避免过度的功能，每一个特性都追求极致的用户体验。同时，Simditor也很容易扩展。<br></p><h2>使用方法</h2><p>在你的html页面中引用如下文件</p><pre class=\"lang-html\" data-lang=\"html\">&lt;link media=\"all\" rel=\"stylesheet\" type=\"text/css\" href=\"styles/font-awesome.css\" /&gt;\r\n&lt;link media=\"all\" rel=\"stylesheet\" type=\"text/css\" href=\"styles/simditor.css\" /&gt;\r\n\r\n&lt;script type=\"text/javascript\" src=\"scripts/jquery-2.0.3.js\"&gt;&lt;/script&gt;\r\n&lt;script type=\"text/javascript\" src=\"scripts/module.js\"&gt;&lt;/script&gt;\r\n&lt;script type=\"text/javascript\" src=\"scripts/uploader.js\"&gt;&lt;/script&gt;\r\n&lt;script type=\"text/javascript\" src=\"scripts/simditor.js\"&gt;&lt;/script&gt;\r\n</pre><p>在script中初始化编辑器：<br></p><pre class=\"lang-js\" data-lang=\"js\">var editor = new Simditor({\r\n  textarea: $(\'#textarea-id\')\r\n});\r\n</pre><h2>依赖</h2><ul><li>jQuery 2.0+</li><li><a href=\"https://github.com/mycolorway/simple-module\" target=\"_blank\">Mycolorway Simple Module</a>用于组件开发。</li><li><a href=\"https://github.com/FortAwesome/Font-Awesome\" target=\"_blank\">FontAwesome</a>&nbsp;用于工具栏按钮。</li><li><a href=\"https://github.com/mycolorway/simple-uploader\" target=\"_blank\">Mycolorway Simple Uploader</a>&nbsp;提供本地图片上传功能（可选）。</li></ul><h2>由来</h2><p>从 2012 年第一版 Tower上线以来，Tower 团队就在寻找一款最为合适的编辑器以供 Tower 的用户使用。最早使用<a href=\"http://xing.github.io/wysihtml5/\" target=\"_blank\">wysihtml5</a>作为 Tower 的编辑器，在前期 wysihtml5 很好的满足了 Tower 的核心需求——非常方便的添加附件，无论是直接粘贴剪切板里的内容还是拖动上传，wysihtml5 都很容易实现。不过随着 Tower 功能的增加，当 Tower 引入&nbsp;@ 成员、Markdown 功能、代码识别、自动短链等一系列功能以后，第三方开源编辑器的局限性也逐渐暴露出来，这些局限性让 Tower 在很多用户体验和工程复杂性的岔路口上选择向工程复杂性妥协。Tower 认为，作为一款在线生产力工具，让用户能极其舒畅地生产内容是它的核心品质之一，因此决定自己开发一款编辑器，这就是 Simditor 产生的原因。</p><p>经过不断地改进，Tower 在最近使用 simditor 替换了 默认编辑器，包括创建讨论、发表回复以及创建在线文档的编辑器，现在都使用 Simditor 了。Tower 认为，相比其他的开源编辑器，Simditor 不是一个业余爱好的产物，而是每天被几万人使用的真实产品。Tower 会非常谨慎地评估究竟什么功能是实际用户最为需要的，而不会因为交互很酷炫，就把功能增加进编辑器里，导致代码膨胀，造成麻烦的后果。</p>',0,'Simditor是一个简单快速的富文本编辑器。Simditor是Tower开源的所见即所得的在线富文本编辑器。Simditor的理念是保持简单，避免过度的功能，每一个特性都追求极致的用户体验。同时，Simditor也很容易扩展。使用方法在你的html页面中引用如下文件&lt;link media=\"all\" rel=\"stylesheet\" type=\"text/css\" href=\"styles/font-awesome.css\" /&gt;\r\n&lt;link media=\"all\" rel=\"stylesheet\" type=\"text/css\"',4),(27,'ubuntu设置弄残了 恢复sudo apt-get install',1403847057,'','<p>ubuntu设置弄残了 恢复sudo apt-get install ibus-pinyin unity-control-center unity-control-center-signon webaccounts-extension-common xul-ext-webaccounts<br></p>',0,'ubuntu设置弄残了 恢复sudo apt-get install ibus-pinyin unity-control-center unity-control-center-signon webaccounts-extension-common xul-ext-webaccounts',5),(28,'Ubuntu下安装搜狗输入法',1403847170,'','<p>在ubuntu下可以使用搜狗拼音输入法了，这真是个令人振奋的消息。本文讲述怎样在Ubuntu系统下安装搜狗拼音输入法。</p><h2>1.删除系统原有的输入法</h2><p>Ubuntu下默认安装了ibus，因此先删除它。并且对已经安装的老版fcitx同时也要删掉再重新安装。</p><pre class=\"\">$ sudo apt-get remove ibus\r\n$ sudo apt-get remove fcitx*\r\n</pre><p>删除依赖库并检查fcitx是否已经删除：<br></p><pre class=\"\">$ sudo apt-get autoremove\r\n$ dpkg --get-selections | grep fcitx\r\n</pre><h2>2.添加fcitx的ppa</h2><p>添加fcitx的ppa然后刷新软件源:</p><pre class=\"\">$ sudo add-apt-repository ppa:fcitx-team/nightly\r\n$ sudo apt-get update\r\n</pre><h2>3.安装搜狗输入法</h2><pre class=\"\">$ sudo apt-get install fcitx-sogoupinyin\r\n</pre><h2>4.安装所需要的依赖库(17个)</h2><p><strong>sudo apt-get install&nbsp;</strong>****</p><pre class=\"\">fcitx&nbsp;fcitx-bin&nbsp;fcitx-config-common&nbsp;fcitx-config-gtk&nbsp;fcitx-data&nbsp;fcitx-frontend-gtk2&nbsp;fcitx-frontend-gtk3&nbsp;fcitx-frontend-qt4&nbsp;fcitx-googlepinyin&nbsp;fcitx-libs&nbsp;fcitx-module-dbus&nbsp;fcitx-module-x11&nbsp;fcitx-modules&nbsp;fcitx-pinyin&nbsp;fcitx-table&nbsp;fcitx-table-wubi&nbsp;fcitx-ui-classic\r\n</pre><h2>5.设置fcitx为默认输入法</h2><pre class=\"\">$ im-switch -s fcitx -z default\r\n$ sudo im-switch -s fcitx -z default\r\n</pre><p>如果没有im-switch命令请自行安装：sudo apt-get install im-switch。</p><h2>6.注销或者重启使设置生效</h2>',0,'在ubuntu下可以使用搜狗拼音输入法了，这真是个令人振奋的消息。本文讲述怎样在Ubuntu系统下安装搜狗拼音输入法。1.删除系统原有的输入法Ubuntu下默认安装了ibus，因此先删除它。并且对已经安装的老版fcitx同时也要删掉再重新安装。$ sudo apt-get remove ibus\r\n$ sudo apt-get remove fcitx*\r\n删除依赖库并检查fcitx是否已经删除：$ sudo apt-get autoremove\r\n$ dpkg --get-selections | grep fcitx\r\n2.添加fcitx的ppa添加fcitx的ppa然后刷新软件源:$ sudo add-apt-repository ppa:fcitx-team/nightly\r\n$ sudo apt-get update\r\n3.安装搜狗',5),(29,'教你替换网站小图标 favicon.ico',1404372574,'','<p>只要将favicon.ico复制或替换到你网站的根目录下面就可以了。</p><p>如果不知道favicon.ico怎么做，你可以选择任意一张图片，在百度搜索 icon在线制作，上面图片，然后就会生成ico图标了，然后叫名字改为favicon.ico就可以了。</p>',0,'只要将favicon.ico复制或替换到你网站的根目录下面就可以了。如果不知道favicon.ico怎么做，你可以选择任意一张图片，在百度搜索 icon在线制作，上面图片，然后就会生成ico图标了，然后叫名字改为favicon.ico就可以了。',4),(30,'discuz 添加多个创始人的方法',1404372720,'','<p>1、找到config/config_global.php文件</p><p>2、找到$_config[\'admincp\'][\'founder\'] = \'1\';1就是把uid为1的用户设置为创始人，如果要设置多个用,隔开。</p><p>如把uid为2的也设置为创始人，</p><p>代码如下：<br></p><pre class=\"\">$_config[\'admincp\'][\'founder\'] = \'1,2\';</pre>',0,'1、找到config/config_global.php文件2、找到$_config[\'admincp\'][\'founder\'] = \'1\';1就是把uid为1的用户设置为创始人，如果要设置多个用,隔开。如把uid为2的也设置为创始人，代码如下：$_config[\'admincp\'][\'founder\'] = \'1,2\';',4),(31,'去掉Discuz title中的 Powered by Discuz!',1404372794,'','<p>进入模板目录template\\default\\common找到header_common.htm文件，然后找到如下代码，将Powered by Discuz!删除就可以了，也可根据自己的需要而更改：<br></p><pre class=\"\">&lt;title&gt;&lt;!--{if !empty($navtitle)}--&gt;$navtitle - &lt;!--{/if}--&gt;&lt;!--{if empty($nobbname)}--&gt; $_G[\'setting\'][\'bbname\'] - &lt;!--{/if}--&gt;&lt;font color=\"Red\"&gt; Powered by Discuz!&lt;/font&gt;&lt;/title&gt;\r\n</pre>',0,'进入模板目录template\\default\\common找到header_common.htm文件，然后找到如下代码，将Powered by Discuz!删除就可以了，也可根据自己的需要而更改：&lt;title&gt;&lt;!--{if !empty($navtitle)}--&gt;$navtitle - &lt;!--{/if}--&gt;&lt;!--{if empty($nobbname)}--&gt; $_G[\'setting\'][\'bbname\'] - &lt;!--{/if}--&gt;&lt;font color=\"Red\"&gt; Powered by Discuz!&lt;/font&gt;&lt;/title&gt;',4),(32,'Bootstrap 3.2.0 发布，Web 前端 UI 框架',1404372902,'http://static.oschina.net/uploads/img/201203/16115128_hu5O.jpg','<p>最新的 Bootstrap 3.2.0 发布了，该版本主要新特性包括：</p><ul><li><p>Responsive embeds</p></li><li><p>New responsive utility classes</p></li><li><p>Copy docs snippets</p></li><li><p>LMVTFY</p></li><li><p>Browser bugs</p></li></ul><p>等等，详细介绍请看官方<a target=\"_blank\" href=\"http://blog.getbootstrap.com/2014/06/26/bootstrap-3-2-0-released/\">发行说明</a>。</p><p>下载地址：</p><p><a target=\"_blank\" href=\"https://github.com/twbs/bootstrap/archive/v3.2.0.zip\">https://github.com/twbs/bootstrap/archive/v3.2.0.zip</a></p><p>Bootstrap CDN：</p><pre class=\"\">&lt;!--&nbsp;Latest&nbsp;compiled&nbsp;and&nbsp;minified&nbsp;CSS&nbsp;--&gt;\r\n&lt;link&nbsp;rel=\"stylesheet\"&nbsp;href=\"//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css\"&gt;\r\n\r\n&lt;!--&nbsp;Optional&nbsp;theme&nbsp;--&gt;\r\n&lt;link&nbsp;rel=\"stylesheet\"&nbsp;href=\"//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css\"&gt;\r\n\r\n&lt;!--&nbsp;Latest&nbsp;compiled&nbsp;and&nbsp;minified&nbsp;JavaScript&nbsp;--&gt;\r\n&lt;script&nbsp;src=\"//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js\"&gt;&lt;/script&gt;\r\n</pre><p>Bootstrap是快速开发Web应用程序的前端工具包。它是一个CSS和HTML的集合，它使用了最新的浏览器技术，给你的Web开发提供了时尚的版式，表单，buttons，表格，网格系统等等。<br></p><p><img alt=\"Image\" src=\"http://static.oschina.net/uploads/img/201203/16115128_hu5O.jpg\" width=\"547.4521276595744\" height=\"507\" data-image-size=\"609,564\"><br></p>',0,'最新的 Bootstrap 3.2.0 发布了，该版本主要新特性包括：Responsive embedsNew responsive utility classesCopy docs snippetsLMVTFYBrowser bugs等等，详细介绍请看官方发行说明。下载地址：https://github.com/twbs/bootstrap/archive/v3.2.0.zip',4),(33,'105+ 个免费的扁平UI工具包 增强你的Web设计',1404373035,'http://thedesignpixel.com/wp-content/uploads/2014/05/Flat-UI.jpg','<p>作为一名开发人员，需要时刻保持敏锐度，站在趋势的最新潮流上。如果你是一个热衷于设计的人，你必须要很好地了解扁平界面设计的新趋势，因为它现在已经无处不在了。扁平UI设计使用的颜色像黄色，绿色，红色，没有渐变或复杂的图形内容。在2014年的今天，这可能会成为WEB 2.0的一个重要组成部分，因为这已经被大家使用和拥戴。</p><p>目前已经有成千上万的网站都在使用扁平设计，下面这些高水准的色彩组合效果，将会令你印象非常深刻。这些很酷的扁平UI工具包中包含了模板，PSD等很多相关类型。</p><p><strong>105+ 个免费扁平UI工具包 增强你的Web设计：</strong></p><p><strong><img alt=\"Image\" src=\"http://thedesignpixel.com/wp-content/uploads/2014/05/Flat-UI.jpg\" width=\"600\" height=\"480\" data-image-size=\"600,480\"><br></strong></p>',0,'作为一名开发人员，需要时刻保持敏锐度，站在趋势的最新潮流上。如果你是一个热衷于设计的人，你必须要很好地了解扁平界面设计的新趋势，因为它现在已经无处不在了。扁平UI设计使用的颜色像黄色，绿色，红色，没有渐变或复杂的图形内容。在2014年的今天，这可能会成为WEB 2.0的一个重要组成部分，因为这已经被大家使用和拥戴。目前已经有成千上万的网站都在使用扁平设计，下面这些高水准的色彩组合效果，将会令你印象非常深刻。这些很酷的扁平UI工具包中包含了模板，PSD等很多相关类型。105+ 个免费扁平UI工具包 增强你的Web设计：',4),(34,'PHP开发：从程序化到面向对象',1404373086,'','<p><strong>教程详情</strong></p><p>• 难度: 中级</p><p>• 预计完成时间: 60分钟</p><p>这份教程的诞生源自一年多之前Robert C.Martin在演讲中带给我的启发。当时他的演讲主题在于讨论创造“终极编程语言”的可能性。在过程中，他提出了这样几个问题：为什么会存在“终极编程语言”？这样的语言应具备哪些特性？但随着他的讲解，我从中发现另一种有趣的思路：每种编程范式都在无形中给程序员带来诸多无法避免的局限性。为了正本溯源，我打算在正式进入PHP由程序化向面向对象转变这一话题之前，先与大家分享一些理论知识。</p><p><strong>范式局限</strong></p><p>每种编程范式都限制了我们将想象转化为现实的能力。这些范式去掉了一部分可行方案，却纳入另一些方案作为替代，但这一切都是为了实现同样的表示效果。模块化编程令程序规模受到制约，强迫程序员只能在对应模块范畴之内施展拳脚，且每个模块结尾都要以“go-to”来指向其它模块。这种设定直接影响了程序成品的规模。另外，结构化编程与程序化编程方式去掉了“go-to”声明，从而限制了程序员对序列、选择以及迭代语句的调整能力。序列属于变量赋值，选择属于if-else判断，而迭代则属于do-while循环。这些已经成为当下编程语言与范式的构建基石。</p><p>面向对象编程方式去掉了函数指针，同时引入多态特性。PHP使用指针的方式与C语言有所不同，但我们仍能从变量函数库中找到这些函数指针的变体形式。这使得程序员能够将某个变量的值当成函数名称，从而实现以下内容：</p><pre class=\"\">function&nbsp;foo()&nbsp;{ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;\"This&nbsp;is&nbsp;foo\"; &nbsp;\r\n} &nbsp;&nbsp; &nbsp;function&nbsp;bar($param)&nbsp;{ &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;echo&nbsp;\"This&nbsp;is&nbsp;bar&nbsp;saying:&nbsp;$param\"; &nbsp;} &nbsp;&nbsp; &nbsp;$function&nbsp;=&nbsp;\'foo\'; &nbsp;$function();&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;Goes&nbsp;into&nbsp;foo() &nbsp;&nbsp; &nbsp;$function&nbsp;=&nbsp;\'bar\'; &nbsp;$function(\'test\');&nbsp;&nbsp;//&nbsp;Goes&nbsp;into&nbsp;bar() &nbsp;\r\n</pre>',0,'教程详情• 难度: 中级• 预计完成时间: 60分钟这份教程的诞生源自一年多之前Robert C.Martin在演讲中带给我的启发。当时他的演讲主题在于讨论创造“终极编程语言”的可能性。在过程中，他提出了这样几个问题：为什么会存在“终极编程语言”？这样的语言应具备哪些特性？但随着他的讲解，我从中发现另一种有趣的思路：每种编程范式都在无形中给程序员带来诸多无法避免的局限性。为了正本溯源，我打算在正式进入PHP由程序化向面向对象转变这一话题之前，先与大家分享一些理论知识。范式局限每种编程范式都限制了我们将想象转化为现实的能力。这些范式去掉了一部分可行方案，却纳入另一些方案作为替代，但这一切都是为了实现同样的表示效果。模块化编程令程序规模受到制约，强迫程序员只能在对应模块范畴之内施展拳脚，且每个模块结尾都要以“go-to”来指向其它模块。这种设定直接影响了程序成品的规模。另外，结构化编程与程序化编程方式去掉了“go-to”声明，从',4),(35,'如何模拟超过 5 万的并发用户',1404373128,'http://s3.51cto.com/wyfs02/M00/38/1D/wKiom1OzZEbzKx2NAADw3Gv5dJQ302.jpg','<p>文将从负载测试的角度，描述了做一次流畅的5万用户并发测试需要做的事情.</p><p><strong>你可以在本文的结尾部分看到讨论的记录.</strong></p><p>快速的步骤概要</p><ol><li><p>编写你的脚本</p></li><li><p>使用JMeter进行本地测试</p></li><li><p>BlazeMeter沙箱测试</p></li><li><p>使用一个控制台和一个引擎设置Users-per-Engine的数量</p></li><li><p>设置并测试你的集合&nbsp;(1个控制台和10-14 引擎)</p></li><li><p>使用 Master / Slave 特性来达成你的最大CC目标</p></li><li><p><img alt=\"Image\" src=\"http://s3.51cto.com/wyfs02/M00/38/1D/wKiom1OzZEbzKx2NAADw3Gv5dJQ302.jpg\" width=\"911.5018050541515\" height=\"507\" data-image-size=\"996,554\"><br></p></li></ol><h3>步骤一1 : 编写你的脚本<br>&nbsp;</h3><p>开始之前，请确定从JMeter的Apache社区<a href=\"http://jmeter.apache.org/\" target=\"_blank\">jmeter.apache.org&nbsp;</a>获得了最新的版本.</p><p>你也会要下载<a href=\"http://jmeter-plugins.org/downloads/all/\" target=\"_blank\">这些附加的插件</a>&nbsp;，因为它们可以让你的工作更轻松.</p><p>有许多方法可以获得脚本:</p><ol><li><p>使用&nbsp;<a href=\"http://community.blazemeter.com/knowledgebase/articles/231479-chrome-extension\">BlazeMeter 的 Chrome 扩展</a>&nbsp;来记录你的方案</p></li><li><p>使用&nbsp;<a href=\"http://community.blazemeter.com/knowledgebase/articles/201038-jmeter-video-tutorial-recording-a-user-session-wi\">JMeter HTTP(S) 测试脚本记录器&nbsp;</a>来设置一个代理，那样你就可以运行你的测试并记录下所有的东西</p></li><li><p>从头开始全部手工构建(可能是功能/QA测试)</p></li></ol><p>如果你的脚本是一份记录的结果(像步骤1&amp;2), 请牢记:</p><ol><li><p>你需要改变诸如Username &amp; Password这样的特定参数，或者你也许会想要设置一个CSV文件，有了里面的值每个用户就可以是不同的.</p></li><li><p>为了完成诸如“添加到购物车”，“登录”还有其它这样的请求，你也许要使用正则表达式，JSON路径提取器，XPath提取器，来提取诸如Token字符串，表单构建ID还有其它要素</p></li><li><p>保持你的脚本参数化，并使用配置元素，诸如默认HTTP请求，来使得在环境之间切换时你的工作更轻松.</p></li></ol><h3>步骤2 : 使用JMeter进行本地测试</h3><p>在1个线程的1个迭代中使用查看结果树要素，调试样本，虚拟样本还有打开的日志查看器（一些JMeter的错误会在里面报告），来调试你的脚本.</p><p>遍历所有的场景(包括True 或者 False的回应) 来确保脚本行为确如预期...</p><p>在成功使用一个线程测试之后——将其提高到10分钟10到20个线程继续测试:</p><ol><li><p>如果你想要每个用户独立——是那样的么?</p></li><li><p>有没有收到错误?</p></li><li><p>如果你在做一个注册过程，那就看看你的后台 - 账户是不是照你的模板创建好了? 它们是不是独立的呢?</p></li><li><p>从总结报告中，你可以看到对测试的统计 - 它们有点用么? (平均响应时间, 错误, 每秒命中率)</p></li></ol><p>一旦你准备好了脚本:</p><ol><li><p>通过移除任何调试和虚拟样本来清理脚本，并删除你的脚本侦听器</p></li><li><p>如果你使用了侦听器(诸如&nbsp;\"将响应保存到一个文件\")，请确保你没有使用任何路径! , 而如果他是一个侦听器或者一个CSV数据集配置——请确保你没有使用你在本地使用的路径 - 而只要文件名(就好像跟你的脚本在同一个文件夹)</p></li><li><p>如果你使用了自己专有的JAR文件，请确保它也被上传了.</p></li><li><p>如果你使用了超过一个线程组（不是默认的那个) - 请确保在将其上传到BlazeMeter之前设置了这个值.</p></li></ol><h3>步骤3 : BlazeMeter沙箱测试<br>&nbsp;</h3><p>如果那时你的第一个测试——你应该温习一下&nbsp;<a href=\"http://community.blazemeter.com/knowledgebase/articles/65152-adding-a-new-jmeter-test-plan\">这篇</a>&nbsp;有关如何在BlazeMeter中创建测试的文章.</p><p>将沙箱的测试配置设置成，用户300，1个控制台, 时间50分钟.</p><p>对沙箱进行这样的配置让你可以在后台测试你的脚本，并确保上的BlazeMeter的一切都运行完好.</p><p>为此，先按下灰色的按钮: 告诉JMeter引擎我想要完全控制! - 来获得对你的测试参数的完全控制</p><p>通常你将会遇到的问题:</p><ol><li><p>防火墙 - 确保你的环境对BlazeMeter的<a href=\"https://irdeto.atlassian.net/wiki/community.blazemeter.com/knowledgebase/articles/42736-what-ips-cidrs-does-blazemeter-use-\" target=\"_blank\">CIDR 列表</a>&nbsp;(它们会实时更新)开发，并把它们放入白名单中</p></li><li><p>确保你所有的测试文件, 比如: CSVs, JAR, JSON, User.properties 等等.. 都可以使用</p></li><li><p>确保你没有使用任何路径</p></li></ol><p>如果仍然有问题，那就看看错误日志吧(你应该可以把整个日志都下载下来).</p><p>一个沙箱的配置可以是这样的:</p><ul><li><p>引擎: 是能使控制台(1 个控制台&nbsp;, 0 个引擎)</p></li><li><p>线程: 50-300</p></li><li><p>产能提升: 20 分钟</p></li><li><p>迭代: 一直测试下去</p></li><li><p>时间: 30-50 分钟</p></li></ul><p>这可以让你在产能提升期间获得足够多的数据(以防你遇到问题) ，而你将可以对结果进行分析，以确保脚本的执行确如预期.</p><p>你应该观察下Waterfall / WebDriver 选项卡来看看请求是否正常，你不应该在这一点上出任何问题（除非你是故意的).</p><p>你应该盯着监控选项卡，观察期内存和CPU消耗 - 这对你在步骤4中尝试设置每一个引擎的用户数量.</p>',0,'文将从负载测试的角度，描述了做一次流畅的5万用户并发测试需要做的事情.你可以在本文的结尾部分看到讨论的记录.快速的步骤概要编写你的脚本使用JMeter进行本地测试BlazeMeter沙箱测试使用一个控制台和一个引擎设置Users-per-Engine的数量设置并测试你的集合&nbsp;(1个控制台和10-14 引擎)使用 Master / Slave 特性来达成你的最大CC目标',4),(36,'HTML5应用在公司网站的案例',1404373243,'http://images.51cto.com/files/uploadimg/20120730/0950590.jpg','<p>html5的优势主要体现在移动终端上,包括平板电脑,手机等移动终端,这其中,平板式以ipad为主,而手机是一iphone的ios系统,以及android的系统手机为主,html5编写的代码在互动方面看起来没有flash来得那么绚丽,但它的确已经开始取代adobe 的flash在移动市场上的地位,最近中国刚刚公布上网方式的改变,中国的上网人群所用设备比例,已经由pc转为移动终端,这就意味着,html5编写的网站,将比flash的网站,在移动终端上更有优势,因为flash无法在这些终端上看,就意味着丢失了它自己的商业价值.</p><p>以下国外设计的一些效果比较好的html5网站，一起欣赏</p><p>这是家英国的数字媒体营销公司，主要的业务是关键字营销，SEO，以及社交媒体营销。</p><p><a href=\"http://www.zazzlemedia.co.uk/\" target=\"_blank\">http://www.zazzlemedia.co.uk/</a></p><p><img alt=\"Image\" src=\"http://images.51cto.com/files/uploadimg/20120730/0950590.jpg\" width=\"600\" height=\"299\" data-image-size=\"600,299\"><br></p><p>这是个收集全球在同一时刻留言的网站，这些流言的网站通过旋转地球来展示互动。</p><p><a href=\"http://tweetingearth.com/\">http://tweetingearth.com</a></p><p><img alt=\"Image\" src=\"http://images.51cto.com/files/uploadimg/20120730/0950591.jpg\" width=\"600\" height=\"298\" data-image-size=\"600,298\"><br></p>',0,'html5的优势主要体现在移动终端上,包括平板电脑,手机等移动终端,这其中,平板式以ipad为主,而手机是一iphone的ios系统,以及android的系统手机为主,html5编写的代码在互动方面看起来没有flash来得那么绚丽,但它的确已经开始取代adobe 的flash在移动市场上的地位,最近中国刚刚公布上网方式的改变,中国的上网人群所用设备比例,已经由pc转为移动终端,这就意味着,html5编写的网站,将比flash的网站,在移动终端上更有优势,因为flash无法在这些终端上看,就意味着丢失了它自己的商业价值.以下国外设计的一些效果比较好的html5网站，一起欣赏这是家英国的数字媒体营销公司，主要的业务是关键字营销，SEO，以及社交媒体营销。http://www.zazzlemedia.co.uk/',4),(37,'改善PHP开发方式的5种方法',1404373329,'','<p>我们不应该轻视代码的组织，选择的编码样式应该是事先约定好的，许多人只是随机的在做这些事情，这让他们的代码变得十分混乱，十分令人难以理解。</p><p>你可以在那里宣称自己是最好的开发者，但是，如果你的代码缺乏良好的组织，你是不会走的太远的。举个例子，比如说，在当地的社区大学中，你是一名教师。如果你决定从初级和高级的资料中随机地选取一大堆知识，然后按照这种顺序把这些知识教授给你的学生——而不是从初级到高级，循序渐进地教授给你的学生，那么你的学生们会十分困惑，而且，作为一名教师，他们是不会欢迎你的，如果他们不欢迎你，他们就不会上你的课。</p><p>我的观点是，找出一种适合你的组织方法和编码样式，并且一直坚持下去，这样的话，你的代码的组织和布局会变得十分有条理。</p>',0,'我们不应该轻视代码的组织，选择的编码样式应该是事先约定好的，许多人只是随机的在做这些事情，这让他们的代码变得十分混乱，十分令人难以理解。你可以在那里宣称自己是最好的开发者，但是，如果你的代码缺乏良好的组织，你是不会走的太远的。举个例子，比如说，在当地的社区大学中，你是一名教师。如果你决定从初级和高级的资料中随机地选取一大堆知识，然后按照这种顺序把这些知识教授给你的学生——而不是从初级到高级，循序渐进地教授给你的学生，那么你的学生们会十分困惑，而且，作为一名教师，他们是不会欢迎你的，如果他们不欢迎你，他们就不会上你的课。我的观点是，找出一种适合你的组织方法和编码样式，并且一直坚持下去，这样的话，你的代码的组织和布局会变得十分有条理。',4),(38,'深入学习PHP数组删除元素方法',1404373427,'','<p>学习PHP时，你可能会遇到PHP数组删除问题，这里将介绍PHP数组删除问题的解决方法，在这里拿出来和大家分享一下。学过C语言的人可能都知道，C语言对字符串的处理功能很强，PHP是用C写成的，自然不例外的继承了C的处理字符串的优势。不过毕竟PHP是一门新的语言，与C语言还是有区别的，自然不能保证与C是完全相同的。所以有些功能只有经过测试才能知道。&nbsp; 有时候需要对一个字符串的每个字符进行处理，一般的做法可能是：&nbsp;<br></p><pre class=\"\">$str=\"something\"; &nbsp;for($i=0;&nbsp;&nbsp;$i&lt;strlen($str);&nbsp;&nbsp;$i++) &nbsp;\r\n{ &nbsp;$ch=substr($str,&nbsp;&nbsp;$i,&nbsp;&nbsp;1); &nbsp;\r\n//处理$ch &nbsp;}&nbsp;\r\n</pre><p>这样是可以，但是有没有更优美一点的办法呢？有，就是把它看成一个数组，C语言就是这样处理的。&nbsp;</p><p>我们把上面的例子，改成用字符串数组的处理方式：</p><pre class=\"\">$str=\"something\"; &nbsp;for($i=0;&nbsp;&nbsp;$i&lt;strlen($str);&nbsp;&nbsp;$i++) &nbsp;\r\n{ &nbsp;$ch=$str[$i]; &nbsp;//处理$ch &nbsp;}&nbsp;\r\n</pre><p>这样是不是好多了。&nbsp;</p><p><strong>PHP数组删除元素</strong></p><p>定义了一个数组，有时想PHP数组删除其中几项怎么办？我在<a href=\"http://www.phpbuilder.com\" rel=\"nofollow\">www.phpbuilder.com</a>中看到了一个答案，就是使用unset()函数。还是让我们做一个测试吧。&nbsp;</p><pre class=\"\">$a[]=\"a1\"; &nbsp;$a[]=\"a2\"; &nbsp;$a[]=\"a3\"; &nbsp;for($i=0;&nbsp;&nbsp;$i&lt;sizeof($a);&nbsp;&nbsp;$i++) &nbsp;\r\n{ &nbsp;echo&nbsp;&nbsp;$a[$i]&nbsp;&nbsp;.&nbsp;&nbsp;\" &nbsp;\"; &nbsp;} &nbsp;unset($a[0]); &nbsp;for($i=0;&nbsp;&nbsp;$i&lt;sizeof($a);&nbsp;&nbsp;$i++) &nbsp;{ &nbsp;echo&nbsp;&nbsp;$a[$i]&nbsp;&nbsp;.&nbsp;&nbsp;\" &nbsp;\"; &nbsp;}&nbsp;\r\n</pre><p>是什么意思呢？先生成一个有三个元素的数组$a，将其显示出来，然后，将第1个（下标为0）删除，再显示出来。结果应该是数组还剩两个元素了。但是不对呀！答案与我们想的不一样，难道是unset() 不好用吗？仔细想一想，原来unset($a[0])将第1个元素给删除了，但是输出时，我们还从$i=0&nbsp; 开始的，当然就不对了，php可不会自动调整下标的。这样只好用别的方法处理了：<br></p><pre class=\"\">$a[]=\"a1\"; &nbsp;$a[]=\"a2\"; &nbsp;$a[]=\"a3\"; &nbsp;for($i=0;&nbsp;&nbsp;$i&lt;sizeof($a);&nbsp;&nbsp;$i++) &nbsp;\r\n{ &nbsp;echo&nbsp;&nbsp;$a[$i]&nbsp;&nbsp;.&nbsp;&nbsp;\" &nbsp;\"; &nbsp;} &nbsp;unset($a[0]); &nbsp;reset($a);&nbsp;&nbsp;//使数组指针回到第1个元素 &nbsp;while(list($c,&nbsp;&nbsp;$d)=each($a)) &nbsp;{ &nbsp;echo&nbsp;&nbsp;$d&nbsp;&nbsp;.&nbsp;&nbsp;\" &nbsp;\";&nbsp;&nbsp;//$c为数组下标 &nbsp;}&nbsp;\r\n</pre><p>这是一个通用的显示数组的方法，可以不用考虑数组的下标了。<br></p>',0,'学习PHP时，你可能会遇到PHP数组删除问题，这里将介绍PHP数组删除问题的解决方法，在这里拿出来和大家分享一下。学过C语言的人可能都知道，C语言对字符串的处理功能很强，PHP是用C写成的，自然不例外的继承了C的处理字符串的优势。不过毕竟PHP是一门新的语言，与C语言还是有区别的，自然不能保证与C是完全相同的。所以有些功能只有经过测试才能知道。&nbsp; 有时候需要对一个字符串的每个字符进行处理，一般的做法可能是：&nbsp;$str=\"something\"; &nbsp;for($i=0;&nbsp;&nbsp;$i&lt;strlen($str);&nbsp;&nbsp;$i++) &nbsp;\r\n{ &nbsp;$ch=substr($str,&nbsp;&nbsp;$i,&nbsp;&nbsp;1); &nbsp;\r\n//处理$ch &nbsp;}&nbsp;\r\n这样是可以，但是有没有更优美一点的办法呢？有，就是把它看成一个数组，C语言就是这样处理的。&nbsp;我们把上面的',4),(39,'微信公众平台新接口解析：开发者如何利用？',1404373464,'http://s8.51cto.com/wyfs01/M00/32/7B/wKioOVKCuaGTrUrFAAC14Qyo7XA581.jpg','<p>上个月底微信终于开放了九大高级接口，开放之前便引起了业内的广泛猜测。开放之后的这段时间似乎热度有所下降，也未见到业内针对这些接口真正的一些动作，而这九大接口的开放对微信公众平台意味着什么似乎让许多公众号运营者迷茫了。</p><p>适逢双十一电商大战，记者有幸拜会了国内领先的微信第三方服务平台微库技术总监，特意整理出一些大家可能比较关注的问题进行分享。</p><p><strong>问：现在正值双十一电商大战火热，未来微信是否也有可能成为电商大战的主角之一呢?</strong></p><p>虽然之前大家期待的微信支付接口最终并没有开放，但是微信照目前的市场以及它潜在的能量个人觉得它完全拥有成为一个移动电商平台的潜质，当然这 一切也必然是建立在微信仍然以社交为本质的基础上。即使目前微信并没有开放支付接口但是也并未完全封锁该接口，同时第三方平台也会有一些自己的解决办法， 微库平台已经上线的微商城功能目前也已经率先实现了微信商城在线支付。确实很期待看到以后双十一的电商大战时，可以直接用手机微信参与抢购，从而摆脱时间空间上的束缚，真正能给用户带来切实的便利。</p><p><img alt=\"Image\" src=\"http://s8.51cto.com/wyfs01/M00/32/7B/wKioOVKCuaGTrUrFAAC14Qyo7XA581.jpg\" width=\"512\" height=\"382\" data-image-size=\"512,382\"><br></p>',0,'上个月底微信终于开放了九大高级接口，开放之前便引起了业内的广泛猜测。开放之后的这段时间似乎热度有所下降，也未见到业内针对这些接口真正的一些动作，而这九大接口的开放对微信公众平台意味着什么似乎让许多公众号运营者迷茫了。适逢双十一电商大战，记者有幸拜会了国内领先的微信第三方服务平台微库技术总监，特意整理出一些大家可能比较关注的问题进行分享。问：现在正值双十一电商大战火热，未来微信是否也有可能成为电商大战的主角之一呢?虽然之前大家期待的微信支付接口最终并没有开放，但是微信照目前的市场以及它潜在的能量个人觉得它完全拥有成为一个移动电商平台的潜质，当然这 一切也必然是建立在微信仍然以社交为本质的基础上。即使目前微信并没有开放支付接口但是也并未完全封锁该接口，同时第三方平台也会有一些自己的解决办法， 微库平台已经上线的微商城功能目前也已经率先实现了微信商城在线支付。确实很期待看到以后双十一的电商大战时，可以直接用手机微信参与抢购，从而摆脱时间空间上的束缚，真正能给用户带来切实的便利。',4),(40,'博客介绍及最新完成功能列表',1404374071,'','<p>沁痕博客基于PHP编程语言进行设计，PHP是一种面向对象的Web程序设计语言，它主要优势体现在简单、面向对象、可移植等多方面，PHP在互联网等领域内占有非常重要的地位。</p><p>采用MVC设计模式，MVC（Model-View-Controller，模型—视图—控制器模式）是软件开发中的一种软件架构模式它把软件系统分为三个基本部分：模型（Model），视图（View）和控制器（Controller），这样可以很好的分离业务逻辑和显示视图，使得客户在编写自己的网页风格时能得心应手，而不受程序编写的限制。沁痕博客采用YII技术框架进行开发，YII 是一个典型的基于面向对象 (OOP)和Model-View-Controller (MVC)模型的企业级WEB应用框架。</p><p>在页面表现上采用Bootstrap框架，符合W3C标准的CSS+DIV设计模式，同时兼容主流浏览器，保证网站页面不会因为将来网络应用的升级而被淘汰。CSS+DIV设计模式将内容和样式进行分离，使页面和样式的调整变得更加简便，同时对搜索引擎更加友好。</p><p>博客最新完成功能列表：</p><p>1、被选中的导航栏目高亮<br></p><p>2、栏目下的文章分页</p><p>3、站点信息配置</p><p>4、友情链接管理</p>',0,'沁痕博客基于PHP编程语言进行设计，PHP是一种面向对象的Web程序设计语言，它主要优势体现在简单、面向对象、可移植等多方面，PHP在互联网等领域内占有非常重要的地位。采用MVC设计模式，MVC（Model-View-Controller，模型—视图—控制器模式）是软件开发中的一种软件架构模式它把软件系统分为三个基本部分：模型（Model），视图（View）和控制器（Controller），这样可以很好的分离业务逻辑和显示视图，使得客户在编写自己的网页风格时能得心应手，而不受程序编写的限制。沁痕博客采用YII技术框架进行开发，YII 是一个典型的基于面向对象 (OOP)和Model-View-Controller (MVC)模型的企业级WEB应用框架。在页面表现上采用Bootstrap框架，符合W3C标准的CSS+DIV设计模式，同时兼容主流浏览器，保证网站页面不会因为将来网络应用的升级而被淘汰。CSS+DIV设计模式将内容和样式进行分离，使页面和样式的调整变得更加简便，同时对搜索引擎更加友好。博客最新完成功能列表：',6);
/*!40000 ALTER TABLE `t_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_category`
--

DROP TABLE IF EXISTS `t_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_category` (
  `cid` int(10) unsigned NOT NULL auto_increment,
  `cname` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_category`
--

LOCK TABLES `t_category` WRITE;
/*!40000 ALTER TABLE `t_category` DISABLE KEYS */;
INSERT INTO `t_category` VALUES (4,'建站资源'),(5,'电脑技巧'),(6,'生活随笔');
/*!40000 ALTER TABLE `t_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_comment`
--

DROP TABLE IF EXISTS `t_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_comment` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `nickname` varchar(50) NOT NULL default '',
  `email` varchar(150) NOT NULL default '',
  `content` text,
  `aid` int(10) unsigned NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `ip` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_comment`
--

LOCK TABLES `t_comment` WRITE;
/*!40000 ALTER TABLE `t_comment` DISABLE KEYS */;
INSERT INTO `t_comment` VALUES (1,'柠檬茶','36634584@qq.com','感谢楼主分享资源',28,1404290667,'192.168.1.111'),(2,'柠檬茶','36634584@qq.com','支持楼主。。。',28,1404291577,'192.168.1.111'),(3,'柠檬茶','36634584@qq.com','我为什么在使用fcitx fcitx-bin fcitx-config-common fcitx-config-gtk fcitx-data fcitx-frontend-gtk2 fcitx-frontend-gtk3 fcitx-frontend-qt4 fcitx-googlepinyin fcitx-libs fcitx-module-dbus fcitx-module-x11 fcitx-modules fcitx-pinyin fcitx-table fcitx-table-wubi fcitx-ui-classic的时候报错呢',28,1404292210,'192.168.1.111'),(4,'柠檬茶','36634584@qq.com','测试跨站点脚本攻击\r\n<script>\r\nalert(\"hello world\");\r\n</script>',28,1404370172,'192.168.1.111');
/*!40000 ALTER TABLE `t_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_link`
--

DROP TABLE IF EXISTS `t_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_link` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(80) NOT NULL default '',
  `href` varchar(255) NOT NULL default '',
  `description` varchar(200) NOT NULL default '',
  `no` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_link`
--

LOCK TABLES `t_link` WRITE;
/*!40000 ALTER TABLE `t_link` DISABLE KEYS */;
INSERT INTO `t_link` VALUES (2,'月光博客','http://www.williamlong.info/','',0),(3,'卢松松博客','http://lusongsong.com/','',1),(4,'百度开放云平台','http://developer.baidu.com/','',3);
/*!40000 ALTER TABLE `t_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_site`
--

DROP TABLE IF EXISTS `t_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_site` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(80) NOT NULL default '',
  `title` varchar(80) NOT NULL default '',
  `keywords` varchar(100) NOT NULL default '',
  `description` varchar(200) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_site`
--

LOCK TABLES `t_site` WRITE;
/*!40000 ALTER TABLE `t_site` DISABLE KEYS */;
INSERT INTO `t_site` VALUES (1,'沁痕博客','关注站长和互联网的媒体博客','草根站长,互联网创业','讲述站长的那些事儿，沁痕博客是一个关注站长、互联网创业、搜索引擎、计算机编程的媒体科技博客。');
/*!40000 ALTER TABLE `t_site` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-07-03 15:58:40
