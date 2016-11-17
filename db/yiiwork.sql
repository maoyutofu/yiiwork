-- phpMyAdmin SQL Dump
-- http://www.phpmyadmin.net
--
-- 生成日期: 2016 年 11 月 17 日 21:54

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `yiiwork`
--

-- --------------------------------------------------------

--
-- 表的结构 `yw_admin`
--

CREATE TABLE IF NOT EXISTS `yw_admin` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `yw_admin`
--

INSERT INTO `yw_admin` (`uid`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- 表的结构 `yw_article`
--

CREATE TABLE IF NOT EXISTS `yw_article` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL,
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(255) DEFAULT NULL,
  `content` text,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `info` varchar(500) DEFAULT NULL,
  `cid` int(10) unsigned NOT NULL DEFAULT '0',
  `view` int(10) unsigned NOT NULL DEFAULT '0',
  `author` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `yw_article`
--

INSERT INTO `yw_article` (`aid`, `title`, `time`, `thumb`, `content`, `type`, `info`, `cid`, `view`, `author`) VALUES
(1, 'YiiWork博客上线第一篇', 1479390838, 'http://ww1.sinaimg.cn/mw690/c5e04220gw1ei47trzpsaj20e609hae2.jpg', '<p>YiiWork经过了为期一周的线下、线上测试，在今天正式上线。我是YiiWork的博主。</p><p>我是一枚地地道道的程序员，我热爱编程。我不会华丽的词藻，也没有犀利的文笔，写不出动人的文章。我只想记录成长中的点滴，我开发了YiiWork博客程序，为我见证，为我记录。</p><p><img alt="Image" src="http://ww1.sinaimg.cn/mw690/c5e04220gw1ei47trzpsaj20e609hae2.jpg" width="510" height="341" data-image-size="510,341"><br></p>', 0, 'YiiWork经过了为期一周的线下、线上测试，在今天正式上线。我是YiiWork的博主。我是一枚地地道道的程序员，我热爱编程。我不会华丽的词藻，也没有犀利的文笔，写不出动人的文章。我只想记录成长中的点滴，我开发了YiiWork博客程序，为我见证，为我记录。', 2, 28, '唐际忠'),
(2, 'weiphp插件开发，无法创建数据表', 1479311658, '', '<p>weiphp是一个开源的微信公众号管理平台，具体不多做介绍了。主要说说此次在使用weiphp做二次开发时碰到的一个问题。在做weiphp插件开发时，创建模型生成的表结构，在安装插件时无法创建。但插件却提示安装成功。</p><p>初步分析是字符集编码不对导致：</p><p>1、确定数据库及表结构是utf8(在创建数据库和表时可以手动指定)；</p><p>2、install.sql也要是utf-8编码；</p><p>3、如果是在控制台导入脚本，请先 set names utf8；</p><p>在安装插件脚本时必须同时满足上面个条件，否则可能会导致无法创建数据表或出现乱码。</p>', 0, 'weiphp是一个开源的微信公众号管理平台，具体不多做介绍了。主要说说此次在使用weiphp做二次开发时碰到的一个问题。在做weiphp插件开发时，创建模型生成的表结构，在安装插件时无法创建。但插件却提示安装成功。初步分析是字符集编码不对导致：1、确定数据库及表结构是utf8(在创建数据库和表时可以手动指定)；2、install.sql也要是utf-8编码；3、如果是在控制台导入脚本，请先 set names utf8；在安装插件脚本时必须同时满足上面个条件，否则可能会导致无法创建数据表或出现乱码。', 1, 29, '唐际忠'),
(3, '修改weiphp的固定token', 1479311672, 'http://ww1.sinaimg.cn/mw690/c5e04220gw1ei4al63rtzj211i0k2ag9.jpg', '<p>自weiphp2.0后其token是固定的，显示为weiphp。有些可能就不太喜欢，我就是其中之一。下面，我说说如何将其修改成自己喜欢的值。</p><p>在根目录下找到index.php</p><p>然后找到如下代码：</p><pre class="">$tmpArr = array (\r\n    ''weiphp'',			\r\n    $timestamp,			\r\n    $nonce&nbsp;\r\n);\r\n</pre><p>将其中的weiphp改成自己喜欢的值就行了。</p><p>如果你想将 “使用说明” 这个页面也改了，那就需要找到weiphp/Application/Home/View/default/Index/help.html文件了。如下图：</p><p><img alt="Image" src="http://ww1.sinaimg.cn/mw690/c5e04220gw1ei4al63rtzj211i0k2ag9.jpg" width="690" height="369" data-image-size="690,369"><br></p><p><img alt="Image" src="http://ww4.sinaimg.cn/mw690/c5e04220gw1ei4ai92utdj20v60750u4.jpg" width="690" height="158" data-image-size="690,158"><br></p>', 0, '自weiphp2.0后其token是固定的，显示为weiphp。有些可能就不太喜欢，我就是其中之一。下面，我说说如何将其修改成自己喜欢的值。在根目录下找到index.php然后找到如下代码：$tmpArr = array (\r\n    ''weiphp'',			\r\n    $timestamp,			\r\n    $nonce&nbsp;\r\n);\r\n将其中的weiphp改成自己喜欢的值就行了。如果你想将 “使用说明” 这个页面也改了，那就需要找到weiphp/Application/Home/View/default/Index/help.html文件了。如下图：', 1, 26, '唐际忠'),
(4, '云时代下的，国内paas介绍', 1479311682, 'http://ww3.sinaimg.cn/mw690/c5e04220gw1ei4bbfmda4j20kt0e875h.jpg', '<p><img alt="Image" src="http://ww3.sinaimg.cn/mw690/c5e04220gw1ei4bbfmda4j20kt0e875h.jpg" width="690" height="471" data-image-size="690,471"><br></p><p>我个人认为在如今云时代下，paas绝对是我们这些小站长们的福音。其价格便宜、支持多种语言、性能也较高。按需灵活付费。<br></p><p>今天也是突然心血来潮，想介绍下几款国产paas平台。<br></p><p>1、百度云擎(BAE)，速度快，价格还算实惠，数据库提供phpmyadmin管理。支持java、php、node js、python。提供svn、git管理工程文件。</p><p>2、京东云擎(JAE)，速度快，暂时免费，数据库管理是京东自己开发的一套，使用起来没有phpmyadmin方便，受限制较多。支持java、php、node js、python、Ruby。</p><p>3、Sina App Engine(SAE)，一看就知道是新浪的东西了。这个平台我没有用过，但也是收费的，价格也很便宜，使用他们的云豆支付。其实云豆也是可以免费赚取的。实名认证后送2000云豆，还可以申请成为开发者，之后基本可以一直免费使用了。支持java、php、python。</p><p>暂时只作这三家介绍，还有其它的没了解过，就不说了。 但是不管是哪家pass，都有一个不得不说的缺点，对于不熟悉技术的站长来说，使用起来有点难度，因为pass不是通过ftp管理工程文件的了，而是svn或git，需要熟悉svn和git命令/工具。</p>', 0, '我个人认为在如今云时代下，paas绝对是我们这些小站长们的福音。其价格便宜、支持多种语言、性能也较高。按需灵活付费。今天也是突然心血来潮，想介绍下几款国产paas平台。1、百度云擎(BAE)，速度快，价格还算实惠，数据库提供phpmyadmin管理。支持java、php、node js、python。提供svn、git管理工程文件。2、京东云擎(JAE)，速度快，暂时免费，数据库管理是京东自己开发的一套，使用起来没有phpmyadmin方便，受限制较多。支持java、php、node js、python、Ruby。3、Sina App Engine(SAE)，一看就知道是新浪的东西了。这个平台我', 3, 22, '唐际忠'),
(5, '触发onclick事件，弹出一个编辑框', 1479311790, 'http://ww3.sinaimg.cn/mw690/c5e04220gw1ei5hnsb917j20o30cggnp.jpg', '<p>今天有位朋友问我，用户出发onclick事件后，在没有使用dialog插件的情况下，如何弹出一个编辑框。</p><p>其实在js中可以使用，window下的弹出框以及模态框，即是open和showModalDialog或showModelessDialog。</p><p>这里以模态框为例，使用方式如下：</p><pre class="">&lt;!DOCTYPE html&gt;\r\n&lt;html&gt;\r\n&lt;head&gt;\r\n&lt;meta charset="utf-8"&gt;\r\n&nbsp;&nbsp;&lt;script type="text/javascript"&gt;	\r\n&nbsp;&nbsp;function show(){\r\n&nbsp;&nbsp;&nbsp;&nbsp;window.showModalDialog(''file:///D:/workspace/php/cms/um/_examples/customPluginDemo.html'',''1'',''dialogWidth=630px;dialogHeight=330px;'');\r\n&nbsp;&nbsp;}\r\n&nbsp;&nbsp;&lt;/script&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n&nbsp;&nbsp;&lt;input type="button" value="点击进行编辑" onclick="show()"&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;\r\n</pre><pre class="">&lt;!DOCTYPE html&gt;\r\n&lt;html&gt;\r\n&lt;head&gt;\r\n&lt;meta charset="utf-8"&gt;\r\n&nbsp;&nbsp;&lt;link href="../themes/default/_css/umeditor.css" type="text/css" rel="stylesheet"&gt;\r\n&nbsp;&nbsp;&lt;script type="text/javascript" src="../third-party/jquery.min.js"&gt;&lt;/script&gt;\r\n&nbsp;&nbsp;&lt;script type="text/javascript" charset="utf-8" src="../umeditor.config.js"&gt;&lt;/script&gt;\r\n&nbsp;&nbsp;&lt;script type="text/javascript" charset="utf-8" src="editor_api.js"&gt;&lt;/script&gt;\r\n&nbsp;&nbsp;&lt;script type="text/javascript" src="../lang/zh-cn/zh-cn.js"&gt;&lt;/script&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;&nbsp; &nbsp;\r\n&nbsp;&nbsp;&lt;script type="text/plain" id="myEditor" style="width:600px;height:240px;"&gt;&lt;/script&gt;&nbsp; \r\n&nbsp;&nbsp;&lt;script type="text/javascript"&gt;\r\n&nbsp;&nbsp;&nbsp;&nbsp;var ums = UM.getEditor(''myEditor'');\r\n&nbsp;&nbsp;&lt;/script&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;\r\n</pre><p><img alt="Image" src="http://ww3.sinaimg.cn/mw690/c5e04220gw1ei5hnsb917j20o30cggnp.jpg" width="690" height="356" data-image-size="690,356"><br></p>', 0, '今天有位朋友问我，用户出发onclick事件后，在没有使用dialog插件的情况下，如何弹出一个编辑框。其实在js中可以使用，window下的弹出框以及模态框，即是open和showModalDialog或showModelessDialog。这里以模态框为例，使用方式如下：&lt;!DOCTYPE html&gt;\r\n&lt;html&gt;\r\n&lt;head&gt;\r\n&lt;meta charset="utf-8"&gt;\r\n&nbsp;&nbsp;&lt;script type="text/javascript"&gt;	\r\n&nbsp;&nbsp;function show(){\r\n&nbsp;&nbsp;&nbsp;&nbsp;window.showModalDialog(''file:///D:/workspace/php/cms/um/_examples/customPluginDemo.html'',''1'',''dialogWidth=630px;dialogHeight=330px', 1, 23, '唐际忠'),
(6, '简单的chrome插件开发', 1479311694, 'http://ww2.sinaimg.cn/mw690/c5e04220gw1ei6o0mtl77j211y0k3qa4.jpg', '<p>今天学习了下chrome插件开发，现在来做一个非常简单的插件。</p><p>制作目标：</p><p>　　在chrome地址栏后面显示一个插件图标，点击插件时弹出一个界面，可以点击进入博客。</p><p>开始制作插件：</p><p>　　1、创建一个qinhen文件夹；</p><p>　　2、在qinhen文件夹里面创建一个manifest.json的文件；</p><p>　　3、在json文件中进行配置</p><pre class="">{\r\n&nbsp;&nbsp;"name":&nbsp;"沁痕博客",\r\n&nbsp;&nbsp;"version":&nbsp;"1.0",\r\n&nbsp;&nbsp;"manifest_version":&nbsp;2,\r\n&nbsp;&nbsp;"description":&nbsp;"沁痕博客&nbsp;-&nbsp;没有价值",	\r\n&nbsp;&nbsp;"browser_action":&nbsp;{"default_title":"沁痕博客",&nbsp;"default_icon":&nbsp;"icon.png",&nbsp;"default_popup":&nbsp;"popup.html"},\r\n&nbsp;&nbsp;"permissions":&nbsp;["<a href="http://qinhen.duapp.com/" rel="nofollow">http://qinhen.duapp.com/</a>"]\r\n}\r\n</pre><p>重要参数解释：</p><p>default_icon：是指在浏览器地址栏后要显示的图标，复制一个图片到qinhen文件夹里面就可以了，记得图片名称要跟default_icon指定的一样。</p><p>default_popup：就是单击插件后要显示的界面，其实就是一个html文件。</p><p>Permissions：就是权限控制了，允许插件可以访问哪些网站。</p><p>popup.html代码如下：</p><pre class="">&lt;!DOCTYPE&nbsp;html&gt;\r\n&lt;html&gt;	\r\n&lt;head&gt;		\r\n&lt;meta&nbsp;charset="utf-8"&gt;		\r\n&lt;style&nbsp;type="text/css"&gt;		\r\n&nbsp;&nbsp;a{			\r\n&nbsp;&nbsp;&nbsp;&nbsp;text-decoration:&nbsp;none;	\r\n&nbsp;&nbsp;&nbsp;&nbsp;color:&nbsp;#15a230;		\r\n&nbsp;&nbsp;}		\r\n&nbsp;&nbsp;a:hover{				\r\n&nbsp;&nbsp;&nbsp;&nbsp;color:&nbsp;red;		\r\n&nbsp;&nbsp;}			\r\n&nbsp;&nbsp;h2{				\r\n&nbsp;&nbsp;&nbsp;&nbsp;width:&nbsp;210px;		\r\n&nbsp;&nbsp;}		\r\n&lt;/style&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;		\r\n&nbsp;&nbsp;&lt;h2&gt;&lt;a&nbsp;href="<a href="http://qinhen.duapp.com/" rel="nofollow">http://qinhen.duapp.com/</a>"&nbsp;target="_blank"&gt;&lt;i&gt;点击进入&lt;/i&gt;沁痕博客&lt;/a&gt;&lt;/h2&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;\r\n</pre><p>4、在chrome浏览器中点击工具-&gt;扩展程序-&gt;加载正在开发的扩展程序，如下图：</p><p><img alt="Image" src="http://ww2.sinaimg.cn/mw690/c5e04220gw1ei6o0mtl77j211y0k3qa4.jpg" width="690" height="365" data-image-size="690,365"><br></p><p>5、测试扩展程序，如下图：</p><p><img alt="Image" src="http://ww2.sinaimg.cn/mw690/c5e04220gw1ei6o2tkunlj20ce06sdg5.jpg" width="446" height="244" data-image-size="446,244"><br></p><p>6、打包扩展程序，点击打包扩展程序button，选择扩展程序根目录，也就是刚才的qinhen文件夹，其他可以不管。这是就将刚才制作的扩展程序打包成.crx文件了。同时还会生成一个.pem文件，这是将来用来制作升级扩展程序时用的。</p><p>7、安装，如果直接拖进chrome安装，出现这样的提示“无法添加来自此网站的应用、扩展程序和用户脚本”，说明chrome现在只信任webstore里的扩展。这是我们只要在地址栏输入chrome://extensions/ 将插件拖进去就可以安装了(chrome://extensions/ 其实就是你刚才制作插件、打包插件的那个地方)。</p>', 0, '今天学习了下chrome插件开发，现在来做一个非常简单的插件。制作目标：　　在chrome地址栏后面显示一个插件图标，点击插件时弹出一个界面，可以点击进入博客。开始制作插件：　　1、创建一个qinhen文件夹；　　2、在qinhen文件夹里面创建一个manifest.json的文件；　　3、在json文件中进行配置{\r\n&nbsp;&nbsp;"name":&nbsp;"沁痕博客",\r\n&nbsp;&nbsp;"version":&nbsp;"1.0",\r\n&nbsp;&nbsp;"manifest_version":&nbsp;2,\r\n&nbsp;&nbsp;"description":&nbsp;"沁痕博客&nbsp;-&nbsp;没有价值",	\r\n&nbsp;&nbsp;"browser_action":&nbsp;{"default_title":"沁痕博客",&nbsp;"default_icon":&nbsp;"icon.png"', 1, 30, '唐际忠'),
(7, 'YiiWork开源了', 1479390797, '', '<p>yiiwork在github开源啦！！！YiiWork博客简称YW，采用PHP语言的MVC框架Yii Framework开发而成，使用了MySQL数据库。</p><p>github地址：<a href="https://github.com/tjz101/yiiwork" rel="nofollow">https://github.com/tjz101/yiiwork</a></p>', 0, 'yiiwork在github开源啦！！！YiiWork博客简称YW，采用PHP语言的MVC框架Yii Framework开发而成，使用了MySQL数据库。github地址：https://github.com/tjz101/yiiwork', 2, 27, '唐际忠'),
(8, '收藏了国内几家较好的开源项目镜像站', 1479311652, '', '<p>阿里云&nbsp;<a href="http://mirrors.aliyun.com/">http://mirrors.aliyun.com/</a></p><p>网易&nbsp;<a href="http://mirrors.163.com/">http://mirrors.163.com/</a></p><p>搜狐&nbsp;<a href="http://mirrors.sohu.com/">http://mirrors.sohu.com/</a></p><p>中科大&nbsp;<a href="http://mirrors.ustc.edu.cn/">http://mirrors.ustc.edu.cn/</a></p><p>天津大学&nbsp;<a href="http://mirror.tju.edu.cn/">http://mirror.tju.edu.cn/</a></p><p>开源中国&nbsp;<a href="http://mirrors.oschina.net/">http://mirrors.oschina.net/</a></p><p>清华大学&nbsp;<a href="http://mirrors.tuna.tsinghua.edu.cn/">http://mirrors.tuna.tsinghua.edu.cn/</a></p><p>华中科技大学&nbsp;<a href="http://mirror.hust.edu.cn/">http://mirror.hust.edu.cn/</a></p><p>浙江大学&nbsp;<a href="http://mirrors.zju.edu.cn/">http://mirrors.zju.edu.cn/</a></p><p><br></p><p>在国内还有很多开源镜像站，在此不一一列举，感谢他们为国内开源软件用户提供的帮助。以上镜像站都提供了相应源的help文件，包括介绍及安装使用指南。</p>', 0, '阿里云&nbsp;http://mirrors.aliyun.com/网易&nbsp;http://mirrors.163.com/搜狐&nbsp;http://mirrors.sohu.com/中科大&nbsp;http://mirrors.ustc.edu.cn/天津大学&nbsp;http://mirror.tju.edu.cn/开源中国&nbsp;http://mirrors.oschina.net/', 3, 47, '唐际忠'),
(9, 'Firefox不装插件屏蔽网页图片、js广告的终极方法，上网不再受干扰', 1479311646, '', '<p>记得以前的Firefox可以直接在设置中屏蔽图片和禁止javascript加载，但随着版本一次次的更新，这个功能已经没有了。但有时上网只想浏览纯文字页面的怎么办。</p><p>其实只要在地址栏输入about:config，然后找到permissions.default.image将它的值设置为2，就可禁止页面加载图片了，再找到javascript.enabled选项，将值改为false，则可以禁止网页加载javascript了。这样网页上的图片和js广告是不是就全没了。</p>', 0, '记得以前的Firefox可以直接在设置中屏蔽图片和禁止javascript加载，但随着版本一次次的更新，这个功能已经没有了。但有时上网只想浏览纯文字页面的怎么办。其实只要在地址栏输入about:config，然后找到permissions.default.image将它的值设置为2，就可禁止页面加载图片了，再找到javascript.enabled选项，将值改为false，则可以禁止网页加载javascript了。这样网页上的图片和js广告是不是就全没了。', 2, 30, '唐际忠'),
(10, 'Commons Email更简单的使用java发送邮件', 1479311640, '', '<p>Commons Email是对java mail的封装，便于让人更简单的使用java发送邮件。</p><p>Commons Email提供的邮件类型如下：</p><p>Simple Email：支持简单的纯文本邮件发送；</p><p>MultiPartEmail：支持附件和内嵌形式的邮件发送；</p><p>HtmlEmail：支持发送html格式邮件，与MultiPart类似，如果出现不兼容HTML和内联图片会被转换为普通的文本；</p><p>ImageHtmlEmail：支持发送图文并茂的html邮箱，能将所有的外部图片转换成内联图片；</p><p>EmailAttachment：这是一个简单的容器，可以让你轻松的处理附件，它是基于MutiPartEmail和HtmlEmail的。</p><p>目前Commons Email的版本已更新到1.3.3。</p><p>下载地址：<a href="http://commons.apache.org/proper/commons-email/download_email.cgi">http://commons.apache.org/proper/commons-email/download_email.cgi</a></p>', 0, 'Commons Email是对java mail的封装，便于让人更简单的使用java发送邮件。Commons Email提供的邮件类型如下：Simple Email：支持简单的纯文本邮件发送；MultiPartEmail：支持附件和内嵌形式的邮件发送；HtmlEmail：支持发送html格式邮件，与MultiPart类似，如果出现不兼容HTML和内联图片会被转换为普通的文本；ImageHtmlEmail：支持发送图文并茂的html邮箱，能将所有的外部图片转换成内联图片；EmailAttachment：这是一个简单的容器，可以让你轻松的处理附件，它是基于MutiPartEmail和HtmlEmail的。目前Commons Email的版本已更新到1.3.3。下载地址：http://commons.apa', 1, 23, '唐际忠'),
(11, '使用phpMyAdmin管理MySQL', 1479311635, 'http://ww3.sinaimg.cn/mw690/c5e04220gw1eidmqc2035j20jf0budhj.jpg', '<p>phpMyAdmin是目前最流行的MySQL 在线Web管理客户端。在进行远程管理MySQL时，比较其它C/S客户端要方便很多。功能非常丰富，强大。只要安装了WAMP或LAMP环境，然后下载phpMyAdmin，将其解压到htdocs目录中，即可使用了。如果要新建服务器连接访问“127.0.0.1/phpMyAdmin/setup”即可进行配置。</p><p><img alt="Image" src="http://ww3.sinaimg.cn/mw690/c5e04220gw1eidmqc2035j20jf0budhj.jpg" width="690" height="420" data-image-size="690,420"><br></p><p><br></p><p>phpMyAdmin下载地址：<a href="http://sourceforge.net/projects/phpmyadmin/">http://sourceforge.net/projects/phpmyadmin/</a><br></p><p>这里提供一个历史版本下载的链接，因为如果你用的是较低版本的MySQL是无法使用最新版本的phpMyAdmin的：<a href="http://jaist.dl.sourceforge.net/project/phpmyadmin/phpMyAdmin/">http://jaist.dl.sourceforge.net/project/phpmyadmin/phpMyAdmin/</a></p>', 0, 'phpMyAdmin是目前最流行的MySQL 在线Web管理客户端。在进行远程管理MySQL时，比较其它C/S客户端要方便很多。功能非常丰富，强大。只要安装了WAMP或LAMP环境，然后下载phpMyAdmin，将其解压到htdocs目录中，即可使用了。如果要新建服务器连接访问“127.0.0.1/phpMyAdmin/setup”即可进行配置。phpMyAdmin下载地址：http://sourceforge.net/projects/phpmyadmin/这里提供一个历史版本下载的链接，因为', 1, 30, '唐际忠'),
(12, '轻便的MySQL Web管理工具Adminer', 1479311630, 'http://ww2.sinaimg.cn/mw690/c5e04220gw1eidmxxtc5jj20mb0ba78m.jpg', '<p>Adminer是一个类似于phpMyAdmin的MySQL Web客户端。但不同的是Adminer非常小巧，整个程序就只有一个php文件。界面也非常简洁，功能简单，比不上phpMyAdmin，但是提供了SQL执行，这足以弥补功能上的不足了。对于比较熟悉SQL语句的人来说Adminer还是非常好的。</p><p><img alt="Image" src="http://ww2.sinaimg.cn/mw690/c5e04220gw1eidmxxtc5jj20mb0ba78m.jpg" width="690" height="348" data-image-size="690,348"><br></p><p><img alt="Image" src="http://ww1.sinaimg.cn/mw690/c5e04220gw1eidn3kv2zsj20pw09zgn9.jpg" width="690" height="265" data-image-size="690,265"><br></p><p><br></p><p>Adminer下载地址：<a href="http://www.adminer.org/">http://www.adminer.org/</a></p>', 0, 'Adminer是一个类似于phpMyAdmin的MySQL Web客户端。但不同的是Adminer非常小巧，整个程序就只有一个php文件。界面也非常简洁，功能简单，比不上phpMyAdmin，但是提供了SQL执行，这足以弥补功能上的不足了。对于比较熟悉SQL语句的人来说Adminer还是非常好的。Adminer下载地址：', 1, 29, '唐际忠'),
(13, '使用apache的ab.exe对网站进行压力测试', 1479311624, 'http://ww1.sinaimg.cn/mw690/c5e04220gw1eifwotczvtj20dh07i758.jpg', '<p>ab.exe是apache自带的一个压力测试工具。在bin目录下面。<br></p><p><br></p><p><img alt="Image" src="http://ww1.sinaimg.cn/mw690/c5e04220gw1eifwotczvtj20dh07i758.jpg" width="485" height="270" data-image-size="485,270"></p><p>【镇楼图（本来想用萌妹子的，后来想想，还是算了，这年头妹子惹不起啊，何况是我等苦逼程序员，就更加应该避而远之了）】</p><p><br></p><p>ab的使用方法，请看我对百度进行压力测试：</p><p>ab -n100 -c100 <a href="http://www.baidu.com/">http://www.baidu.com/</a><br></p><p>这里表示模拟-c100个用户对百度发起-n100个请求。当然这点并发量不可能对百度带来任何压力，这仅作演示。</p><p>压力测试信息如下：</p><p><img alt="Image" src="http://ww3.sinaimg.cn/mw690/c5e04220gw1eifwit5ewkj20il0k2wio.jpg" width="469.7825484764543" height="507" data-image-size="669,722"><br></p><p><br></p><p>上面全是英文信息，不多解释了。不懂，查有道词典吧。</p><p>ps:ab也可以算的上是ddos攻击工具，学会了请勿做坏事，站在一个站长的角度来说，其实我们都是无辜的。请理解我们站长的心情。</p>', 0, 'ab.exe是apache自带的一个压力测试工具。在bin目录下面。【镇楼图（本来想用萌妹子的，后来想想，还是算了，这年头妹子惹不起啊，何况是我等苦逼程序员，就更加应该避而远之了）】ab的使用方法，请看我对百度进行压力测试：ab -n100 -c100 http://www.baidu.com/这里表示模拟-c100个用户对百度发起-n100个请求。当然这点并发量不可能对百度带来任何压力，这仅作演示。压力测试信息如下：', 1, 58, '唐际忠'),
(14, '使用css3制作QQ6.1登录按钮', 1479311618, 'http://ww2.sinaimg.cn/mw690/c5e04220gw1eitgi8xiqwj20by096jsb.jpg', '<p><img alt="Image" src="http://ww2.sinaimg.cn/mw690/c5e04220gw1eitgi8xiqwj20by096jsb.jpg" width="430" height="330" data-image-size="430,330"><br></p><p>用过最新版QQ6.1的，是不是感觉登录界面很炫？据说QQ界面，也是使用css3&nbsp;html5制作出来的，然后通过封装Chromium框架而进行展现。那么今天我自己也尝试了一把。用css3来制作QQ登录按钮。如果你是一名web程序员，那么你很容易就可以做出跟QQ一样炫丽的界面。<br></p><p>html代码：</p><pre class="lang-html" data-lang="html">&lt;!DOCTYPE html&gt;\r\n&lt;html&gt;\r\n	&lt;head&gt;\r\n		&lt;meta charset="utf-8"&gt;\r\n		&lt;style type="text/css"&gt;\r\n			.btn{\r\n				background: #09a3dc;		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*背景颜色*/\r\n				border: none; 				/*不要边框*/\r\n				width: 195px;				/*设置按钮的长度*/\r\n				height: 30px;				/*设置按钮的宽度*/\r\n				color: #FFFFFF;				/*设置字体颜色*/\r\n				line-height: 30px;			/*设置行高*/\r\n				letter-spacing: 1em;		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*设置字体的间距*/\r\n				border-radius: 5px;			/*设置圆角边框*/\r\n				font-family: 黑体;			/*设置字体*/\r\n				font-size: 14px;			/*设置字体大小*/\r\n				outline: none;				/*当点击时不要出现边框*/\r\n				transition: all .3s ease-in-out; 	/*为按钮背景切换带来平滑效果，不那么突兀*/\r\n			}\r\n			.btn_hover{\r\n				transition: all .3s ease-in-out;\r\n				background: #3cc3f5;\r\n			}\r\n		&lt;/style&gt;\r\n		&lt;script type="text/javascript"&gt;\r\n			/*等待页面加载完毕，给按钮添加各种鼠标事件及css切换*/\r\n			window.onload = function(){\r\n				var login_btn= document.getElementById(''login_btn'');\r\n				login_btn.onmouseover = function(){\r\n					login_btn.className=''btn btn_hover'';\r\n				}\r\n				login_btn.onmouseout = function(){\r\n					login_btn.className=''btn'';\r\n				}\r\n				login_btn.onmousedown = function(){\r\n					login_btn.className=''btn'';\r\n				}\r\n				login_btn.onmouseup = function(){\r\n					login_btn.className=''btn btn_hover'';\r\n				}\r\n			}\r\n		&lt;/script&gt;\r\n	&lt;/head&gt;\r\n	&lt;body&gt;\r\n		&lt;button class="btn" id="login_btn"&gt;登录&lt;/button&gt;\r\n	&lt;/body&gt;\r\n&lt;/html&gt;</pre><p>在chrome浏览器中打开：</p><p><img alt="Image" src="http://ww2.sinaimg.cn/mw690/c5e04220gw1eitgft2tbuj207o03emxd.jpg" width="276" height="122" data-image-size="276,122"><br></p><p>如果在chrome浏览器中打开，你感觉这还是B/S结构程序，那么下面就以C/S形式打开看看。</p><p>我自己编译了一个Chromium框架的示例，然后在里面打开这个html。</p><p><img alt="Image" src="http://ww2.sinaimg.cn/mw690/c5e04220gw1eitgfu3l87j206j02j74c.jpg" width="235" height="91" data-image-size="235,91"><br></p><p>是不是很有C/S的感觉了，试试用CSS3 和HTML5来制作漂亮的桌面应用程序吧。当然，要做这样的程序，并不需要我们自己都去编译Chromium框架。目前互联网上已有各种开源实现。如nodewebkit、有道的hex、腾讯的webtop（alloydesktop），直接配置使用即可。能够很好的把你的B/S项目移植到C/S上。</p>', 0, '用过最新版QQ6.1的，是不是感觉登录界面很炫？据说QQ界面，也是使用css3&nbsp;html5制作出来的，然后通过封装Chromium框架而进行展现。那么今天我自己也尝试了一把。用css3来制作QQ登录按钮。如果你是一名web程序员，那么你很容易就可以做出跟QQ一样炫丽的界面。html代码：&lt;!DOCTYPE html&gt;\r\n&lt;html&gt;\r\n	&lt;head&gt;\r\n		&lt;meta charset="utf-8"&gt;\r\n		&lt;style type="text/css"&gt;\r\n			.btn{\r\n				ba', 1, 119, '唐际忠'),
(15, '风扇不转了，程序员转行修扇记', 1479311611, '', '<p>炎炎夏日，风扇不转了。</p><p>症状：</p><p>1、某一叶片被拦腰截断；</p><p>2、还有两片扇叶，但不能转动了。</p><p>依据上述两点可分为这两种情况：</p><p>1、风扇的发动机坏了；</p><p>2、叶片断了导致不平衡才出现了不能转动情况。</p><p>如果是第一种，那么风扇基本上算是报废了，幸好我的是第二种情况。于是准备了如下工具及原材料进行抢修。</p><p>维修工具：</p><p>十字形螺丝刀一把</p><p>原材料：</p><p>新的扇叶</p><p>维修步骤：用螺丝刀拧开风扇的防护罩（其实我也不知道到底叫什么），然后把断了的坏扇叶拧出，把新的放进去。然后把防护罩装好就ok了。</p><p>碰到的难题：</p><p>1、不知道怎么把坏的扇叶拧出，开始以为是用蛮力。没想到在扇叶圆中心的那个地方有个类似螺帽一样的东西，拧盖就可以了。很轻松就能取出扇叶了；</p><p>2、拧盖防护罩，把上面螺丝的螺帽弄丢了，罪过罪过，赶紧出去找楼下小店的老板化缘了一个回来（感谢好人呐）。</p><p>就这样风扇修好了。</p><p>ps:维修（还是回收）彩电、冰箱、空调、旧电脑 ^_^废报纸.................</p>', 0, '炎炎夏日，风扇不转了。症状：1、某一叶片被拦腰截断；2、还有两片扇叶，但不能转动了。依据上述两点可分为这两种情况：1、风扇的发动机坏了；2、叶片断了导致不平衡才出现了不能转动情况。如果是第一种，那么风扇基本上算是报废了，幸好我的是第二种情况。于是准备了如下工具及原材料进行抢修。维修工具：十字形螺丝刀一把原材料：新的扇叶维修步骤：用螺丝刀拧开风扇的防护罩（其实我也不知道到底叫什么），然后把断了的坏扇叶拧出，把新的放进去。然后把防护罩装好就ok了。碰到的难题：1、不知道怎么把坏的扇叶拧出，开始以为是用蛮力。没想到在扇叶圆中心的那个地方有个类似螺帽一样的东西，拧盖就可以了。很轻松就能取出扇叶了；2、拧盖防护罩，把上面螺丝的螺帽弄丢了，罪过罪过，赶紧出去找楼下小店的老板化缘了一个回来（感谢好人呐）。就这样风扇修好了。ps:维修（还是回', 2, 56, '唐际忠'),
(16, 'CodeIgniter在IE8及一下浏览器无法设置session', 1479311605, '', '<p>今天在使用CodeIgniter做一个网站项目时，在本地的IE、firefox、chrome浏览器上面登录都是成功的。但发布到服务器中时，在IE8浏览器中无法登录了。而在IE9中又是好的。后来通过在网络中搜索资料发现。原来在域名中不能含有“_”符号。否则，将可能导致session出问题。<br></p><p>参考资料：</p><blockquote><p>RFC 952规定在域名中不能出现"_" , 在使用中，应尽量避免这种情况<br></p></blockquote><p>在网上还有一种说法就是，关闭session对数据库的存储。在config.php中将sess_use_database设置为FALSE。</p><pre class="lang-php" data-lang="php">$config[''sess_use_database'']	= FALSE;\r\n</pre>', 0, '今天在使用CodeIgniter做一个网站项目时，在本地的IE、firefox、chrome浏览器上面登录都是成功的。但发布到服务器中时，在IE8浏览器中无法登录了。而在IE9中又是好的。后来通过在网络中搜索资料发现。原来在域名中不能含有“_”符号。否则，将可能导致session出问题。参考资料：RFC 952规定在域名中不能出现"_" , 在使用中，应尽量避免这种情况在网上还有一种说法就是，关闭session对数据库的存储。在config.php中将sess_use_database设置为FALSE。$config[''sess_use_database'']	= FALSE;\r\n', 1, 11, '唐际忠');

-- --------------------------------------------------------

--
-- 表的结构 `yw_articletag`
--

CREATE TABLE IF NOT EXISTS `yw_articletag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(10) unsigned NOT NULL,
  `tid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- 转存表中的数据 `yw_articletag`
--

INSERT INTO `yw_articletag` (`id`, `aid`, `tid`) VALUES
(33, 16, 20),
(34, 16, 21),
(35, 15, 19),
(36, 14, 18),
(37, 13, 17),
(38, 12, 16),
(39, 12, 15),
(40, 12, 14),
(41, 11, 14),
(42, 11, 15),
(43, 10, 12),
(44, 10, 13),
(45, 9, 9),
(46, 9, 10),
(47, 9, 11),
(48, 8, 8),
(49, 2, 5),
(50, 2, 6),
(51, 2, 7),
(52, 3, 5),
(53, 3, 6),
(54, 3, 7),
(55, 4, 4),
(56, 6, 2),
(57, 6, 3),
(60, 5, 19),
(65, 7, 19),
(66, 1, 19);

-- --------------------------------------------------------

--
-- 表的结构 `yw_category`
--

CREATE TABLE IF NOT EXISTS `yw_category` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cname` varchar(15) NOT NULL DEFAULT '',
  `cno` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `yw_category`
--

INSERT INTO `yw_category` (`cid`, `cname`, `cno`) VALUES
(1, '软件编程', 2),
(2, '生活随笔', 6),
(3, '建站资源', 1);

-- --------------------------------------------------------

--
-- 表的结构 `yw_comment`
--

CREATE TABLE IF NOT EXISTS `yw_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(150) NOT NULL DEFAULT '',
  `content` text,
  `aid` int(10) unsigned NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `yw_link`
--

CREATE TABLE IF NOT EXISTS `yw_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL DEFAULT '',
  `href` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(200) NOT NULL DEFAULT '',
  `no` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `yw_link`
--

INSERT INTO `yw_link` (`id`, `name`, `href`, `description`, `no`) VALUES
(2, '月光博客', 'http://www.williamlong.info/', '', 2),
(3, '卢松松博客', 'http://lusongsong.com/', '', 1),
(4, '百度开放云平台', 'http://developer.baidu.com/', '', 3),
(5, '沁痕网络', 'http://www.qinhen.net/', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `yw_site`
--

CREATE TABLE IF NOT EXISTS `yw_site` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL DEFAULT '',
  `title` varchar(80) NOT NULL DEFAULT '',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(200) NOT NULL DEFAULT '',
  `statistical` text NOT NULL,
  `slogan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `yw_site`
--

INSERT INTO `yw_site` (`id`, `name`, `title`, `keywords`, `description`, `statistical`, `slogan`) VALUES
(1, 'YiiWork', '没有价值', '草根站长,互联网创业', '一声呼唤儿时的伙伴，云儿散开笑容又回来。', '<span style="display:none;"><script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id=''cnzz_stat_icon_5951370''%3E%3C/span%3E%3Cscript src=''" + cnzz_protocol + "s4.cnzz.com/stat.php%3Fid%3D5951370'' type=''text/javascript''%3E%3C/script%3E"));</script></span>', '<p>天下皆知美之为美，斯恶已；</p><p class="pull-right">皆知善之为善，斯不善已。</p>');

-- --------------------------------------------------------

--
-- 表的结构 `yw_tag`
--

CREATE TABLE IF NOT EXISTS `yw_tag` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `yw_tag`
--

INSERT INTO `yw_tag` (`tid`, `name`) VALUES
(1, '古剑奇谭'),
(2, 'chrome'),
(3, '插件开发'),
(4, 'Paas平台'),
(5, 'weiphp'),
(6, '微信'),
(7, '公众号开发'),
(8, '开源项目'),
(9, 'Firefox'),
(10, 'JavaScript'),
(11, '插件'),
(12, 'CommonsEmail'),
(13, 'Java Mail'),
(14, 'phpMyAdmin'),
(15, 'MySQL'),
(16, 'Adminer'),
(17, '压力测试'),
(18, 'Chromium'),
(19, ''),
(20, 'PHP'),
(21, 'CodeIgniter');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
