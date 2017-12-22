<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>vzch - 知乎</title>
    <link type="text/css" rel="stylesheet" href="main.css" />
</head>
<body class="zhi">
    <div class="zu-top">
        <div class="zg-warp clearfix">
            <a href="/" class="zu-top-link-logo">知乎</a>
            <div role="search" id="zh-top_search" class="zu-top-search">
                <form method="get" action="/search" id="zh-top-search-form" class="zu-top-search-form">
                    <input type="text" class="zu-top-search-input" placeholder="搜索你感兴趣的内容...">
                    <button type="submit" class="zu-top-search-button">
                        <span class="sprite-icon-magnifier-dark"></span>
                    </button>
                </form>
            </div>
            <div class="zu-top-nav">
                <ul class="zu-top-nav-ul">
                    <li class="zu-top-nav-li current">
                        <a class="zu-top-nav-link" href="/">首页</a>
                    </li>
                    <li class="zu-top-nav-li">
                        <a class="zu-top-nav-link" href="/">话题</a>
                    </li>
                    <li class="zu-top-nav-li">
                        <a class="zu-top-nav-link" href="/">发现</a>
                    </li>
                    <li class="zu-top-nav-li">
                        <a class="zu-top-nav-link" href="/">消息</a>
                    </li>
                </ul>
            </div>
            <div class="zu-top-profile">
                <a href="people/morning" class="zu-top-profile-name">
                    <span class="name">蒋晨光</span>
                    <img class="avatar" src="img/profile_s.jpg" alt="蒋晨光">
                    <span class="zu-top-pm-count zg-noti-number">1</span>
                </a>
                <ul class="top-nav-dropDown">
                    <li>
                        <a href="/people/morning/"><i class="zg-icon zg-icon-home"></i>我的主页</a>
                    </li>
                    <li>
                        <a href="/inbox"><i class="zg-icon zg-icon-pm"></i>私信</a>
                    </li>
                    <li>
                        <a href="/settings"><i class="zg-icon zg-icon-dd-settings"></i>设置</a>
                    </li>
                    <li>
                        <a href="/logout"><i class="zg-icon zg-icon-logout"></i>退出</a>
                    </li>
                </ul>
            </div>
            <button class="zu-top-add-question">提问</button>
        </div>
    </div>
    <div class="zg-wrap zu-main clearFix" role="main">
        <div class="zu-main-content">
            <div class="zu-main-content-inner">
                <div class="zm-profile-header ProfileCard">
                    <div class="zm-profile-header-main">
                        <img class="Avatar Avatar--l" src="img/vczh-header-l.jpg" alt="vczh">
                        <div class="top">
                            <div class="weibo-wrap">
                                <a class="zm-profile-header-user-weibo" href="http://weibo.com/vczh">
                                    <i class="zm-profile-header-icon sina"></i>
                                </a>
                            </div>
                            <div class="title-section">
                                <span class="name">vczh</span>
                            </div>
                            <div class="bio ellipsis" title="专业造轮子，拉黑抢前排。gaclib.net">
                                专业造轮子，拉黑抢前排。
                                <a href="//link.zhihu.com/?target=htp%3A//gaclib.net" class="external">
                                    <span class="invisible">http://</span><span class="visible">gaclib.net</span>
                                    <i class="icon-external"></i>
                                </a>
                            </div>
                        </div>
                        <div class="zm-profile-header-info">
                            <div class="zm-profile-header-user-describe">
                                <div class="items">
                                    <div class="item editable-group">
                                        <i class="icon icon-profile-location"></i>
                                        <span class="info-wrap">
                                            <span class="location item">
                                                <a href="javascript:;" class="topic-link">西雅图（Seattle）</a>
                                            </span>
                                            <span class="business item">
                                                <a href="javascript:;" class="topic-link">计算机软件</a>
                                            </span>
                                            <span class="gender item">
                                                <i class="icon icon-profile-male"></i>
                                            </span>
                                        </span>
                                    </div>
                                    <div class="item editable-group">
                                        <i class="icon icon-profile-company"></i>
                                        <span class="info-wrap">
                                            <span class="employment item" title="Microsoft Office">
                                                <a href="javascript:;" class="topic-link">Microsoft Office</a>
                                            </span>
                                            <span class="position item" title="Developer">
                                                <a href="javascript:;" class="topic-link">Developer</a>
                                            </span>
                                        </span>
                                    </div>
                                    <div class="item editable-group">
                                        <i class="icon icon-profile-education"></i>
                                        <span class="info-wrap">
                                            <span class="education item" title="华南理工大学">
                                                <a href="javascript:;" class="topic-link">华南理工大学</a>
                                            </span>
                                            <span class="education-extra item" title="软件学院">
                                                <a href="javascript:;" class="topic-link">软件学院</a>
                                            </span>
                                        </span>
                                    </div>
                                    <div class="item">
                                        <a class="zm-profile-header-user-detail zg-link-litblue-normal">
                                            <i class="icon zm-profile-header-icon"></i>
                                            <span>查看详细资料</span>
                                        </a>
                                    </div>
                                </div>
                                <div class="zm-profile-header-describe editable-group">
                                    <span class="info-wrap fold-wrap fold">
                                        <span class="description unfold-itme">
                                            <span class="content">
                                                长期开发跨越三大PC平台的GUI库<br>
                                                <a href="//link.zhihu.com/?target=htp%3A//gaclib.net" class="external">
                                                    <span class="invisible">http://</span><span class="visible">gaclib.net</span>
                                                    <i class="icon-external"></i>
                                                </a>
                                                ，讨论QQ群：231200072（不闲聊）<br>
                                                不再更新的技术博客：
                                                <a href="//link.zhihu.com/?target=http://www.cppblog.com/vczh" class="external">
                                                    <span class="invisible">http://</span><span class="visible">cppblog.com/vczh</span>
                                                    <i class="icon-external"></i>
                                                </a>
                                            </span>
                                            <a href="javascript:;" name="fold" class="fold collapse meta-item">
                                                <i class="z-icon-fold"></i>收起
                                            </a>
                                        </span>
                                        <span class="fold-item hidden">
                                            <span class="content">
                                                长期开发跨越三大PC平台的GUI库<br>
                                                <a href="//link.zhihu.com/?target=htp%3A//gaclib.net" class="external">
                                                    <span class="invisible">http://</span><span class="visible">gaclib.net</span>
                                                    <i class="icon-external"></i>
                                                </a>
                                                ，讨论QQ群：231200072（不闲聊）
                                            </span>
                                            <a href="javascript:;" class="unfold zg-link-litblue-normal">显示全部 »</a>
                                        </span>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="zm-profile-header-marked">
                        <i class="sprite-global-icom-marked"></i>
                        被编辑推荐收录了
                        <a class="zg-link-litblue-normal" href="javascript:;">4 个回答</a>
                    </div>
                    <div class="zm-profile-header-operation clearFix">
                        <div class="zm-profile-header-info-list">
                            <span class="zm-profile-header-info-title">获得</span>
                            <span class="zm-profile-header-user-agree">
                                <span class="zm-profile-header-icon"></span>
                                <strong>8240848</strong>赞同
                            </span>
                            <span class="zm-profile-header-user-thanks">
                                <span class="zm-profile-header-icon"></span>
                                <strong>109889</strong>感谢
                            </span>
                        </div>
                        <div class="zm-profile-header-op-btn">
                            <button class="zg-btn zg-btn-unfollow zm-rich-follow-btn">取消关注</button>
                            <a href="/inbox/1001" class="zg-btn-white zm-profile-header-pm-btn" id="zm-profile-header-pm-btn">
                                <i class="zg-icon">私信</i>
                            </a>
                        </div>
                    </div>
                    <div class="profile-navbar clearFix">
                        <a class="item home first active" href="/people/excited-vczh">
                            <i class="icon icon-profile-tab-home"></i>
                            <span class="hide-text">主页</span>
                        </a>
                        <a class="item" href="/people/excited-vczh/asks">
                            提问
                            <span class="num">438</span>
                        </a>
                        <a class="item" href="/people/excited-vczh/answers">
                            回答
                            <span class="num">12449</span>
                        </a>
                        <a class="item" href="/people/excited-vczh/posts">
                            文章
                            <span class="num">41</span>
                        </a>
                        <a class="item" href="/people/excited-vczh/collections">
                            收藏
                            <span class="num">1</span>
                        </a>
                        <a class="item" href="/people/excited-vczh/logs">
                            公共编辑
                            <span class="num">2026</span>
                        </a>
                    </div>
                </div>
                <div class="zm-profile-section-wrap zm-profile-section-grid">
                    <div class="zm-profile-section-head">
                        <a class="js-expand zg-right zg-gray-normal">展开全部</a>
                        <span class="zm-profile-section-title">
                            <h2 class="zm-profile-section-name" style="color: #666;">擅长话题</h2>
                        </span>
                    </div>
                    <div class="inner">
                        <div class="zm-profile-section-list zg-clear">
                            <div class="item" title="vczh在C++下的回答">
                                <span class="avatar"><img src="img/people_vczh/goodat-1.jpg"></span>
                                <div class="arrow zg-icon"></div>
                                <div class="content">
                                    <div class="content-inner">
                                        <h3 class="ellipsis"><a href="/people/excited-vczh/topic" class="zg-gray-darker">C++</a></h3>
                                        <p class="description"><span class="zg-gray-normal des">《C++Primer 5th》强势审校</span></p>
                                        <p class="meta">
                                            <span>
                                                <i class="zg-icon vote"></i>30498
                                            </span>
                                            <span>
                                                <i class="zg-icon comment"></i>890
                                            </span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="item" title="vczh在C++下的回答">
                                <span class="avatar"><img src="img/people_vczh/goodat-2.jpg"></span>
                                <div class="arrow zg-icon"></div>
                                <div class="content">
                                    <div class="content-inner">
                                        <h3 class="ellipsis"><a href="/people/excited-vczh/topic" class="zg-gray-darker">编程语言</a></h3>
                                        <p class="description"></p>
                                        <p class="meta">
                                            <span>
                                                <i class="zg-icon vote"></i>24082
                                            </span>
                                            <span>
                                                <i class="zg-icon comment"></i>599
                                            </span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="zm-profile-section-wrap">
                    <div class="zm-profile-section-head">
                        <a class="zm-profile-section-title" href="/people/excited-vczh/answer-card">
                            <h2 class="zm-profile-section-name">回答</h2>
                            <i class="zg-right zg-icon zm-profile-section-more-btn"></i>
                        </a>
                    </div>
                    <div class="zm-profile-section-list" id="zh-profile-answers-inner-list">
                        <div class="zm-profile-section-item">
                            <div class="zm-profile-vote-count">
                                <div class="zm-profile-vote-num">38</div>
                                <div class="zm-profile-vote-type">赞同</div>
                            </div>
                            <div class="zm-profile-section-main">
                                <h2 class="zm-profile-question">
                                    <a class="question_link" href="question.html">工程师文化对企业一定是好的么？</a>
                                </h2>
                                <p class="zm-profile-item-text">工程师文化的意思就是说，码农门锁在一个房间里，互相不用照顾别人的感受，好好写代…</p>
                            </div>
                        </div>
                        <div class="zm-profile-section-item">
                            <div class="zm-profile-vote-count">
                                <div class="zm-profile-vote-num">23</div>
                                <div class="zm-profile-vote-type">赞同</div>
                            </div>
                            <div class="zm-profile-section-main">
                                <h2 class="zm-profile-question">
                                    <a class="question_link" href="question.html">这张图的问题是什么意思？</a>
                                </h2>
                                <p class="zm-profile-item-text">粗略看了一下，虽然没有全部看懂，但大概是这个意思： 孟德尔定律：啪啪啪 平面几何…</p>
                            </div>
                        </div>
                        <div class="zm-profile-section-item">
                            <div class="zm-profile-vote-count">
                                <div class="zm-profile-vote-num">22</div>
                                <div class="zm-profile-vote-type">赞同</div>
                            </div>
                            <div class="zm-profile-section-main">
                                <h2 class="zm-profile-question">
                                    <a class="question_link" href="question.html">当中国被多国联合入侵，那些移民的华人华侨还会愿意像二战时的先辈一样回国援战吗？</a>
                                </h2>
                                <p class="zm-profile-item-text">只要我国答应永不清算，战后供着。 想想现在的那么多老兵</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="zm-profile-section-wrap zg-profile-ask-wrap">
                    <div class="zm-profile-section-head">
                        <a class="zm-profile-section-title" href="/people/excited-vczh/answer-card">
                            <h2 class="zm-profile-section-name">提问</h2>
                            <i class="zg-right zg-icon zm-profile-section-more-btn"></i>
                        </a>
                    </div>
                    <div class="zm-profile-section-list" id="zh-profile-ask-inner-list">
                        <div class="zm-profile-section-item">
                            <div class="zm-profile-vote-count">
                                <div class="zm-profile-vote-num">91K</div>
                                <div class="zm-profile-vote-type">浏览</div>
                            </div>
                            <div class="zm-profile-section-main">
                                <h2 class="zm-profile-question">
                                    <a class="question_link" href="question.html">为什么阿里抢占线下生意和订购火车票的时候，很多非程序员就一片叫好，而对月饼事件的态度就截然相反？</a>
                                </h2>
                                <div class="meta zg-gray">
                                    <a class="follow-link zg-follow meta-item" href="javascript:;"><i class="z-icon-follow"></i>关注问题</a>
                                    <span class="zg-bull">•</span>
                                    133 个回答
                                    <span class="zg-bull">•</span>
                                    488 个关注
                                </div>
                            </div>
                        </div>
                        <div class="zm-profile-section-item">
                            <div class="zm-profile-vote-count">
                                <div class="zm-profile-vote-num">89K</div>
                                <div class="zm-profile-vote-type">浏览</div>
                            </div>
                            <div class="zm-profile-section-main">
                                <h2 class="zm-profile-question">
                                    <a class="question_link" href="question.html">如何评价 2016 年 8 月 Steam 平台 Windows 10 市场份额已近49%？</a>
                                </h2>
                                <div class="meta zg-gray">
                                    <a class="follow-link zg-follow meta-item" href="javascript:;"><i class="z-icon-follow"></i>关注问题</a>
                                    <span class="zg-bull">•</span>
                                    88 个回答
                                    <span class="zg-bull">•</span>
                                    316 个关注
                                </div>
                            </div>
                        </div>
                        <div class="zm-profile-section-item">
                            <div class="zm-profile-vote-count">
                                <div class="zm-profile-vote-num">788</div>
                                <div class="zm-profile-vote-type">浏览</div>
                            </div>
                            <div class="zm-profile-section-main">
                                <h2 class="zm-profile-question">
                                    <a class="question_link" href="question.html">如何评价《又停了一個項目：傳谷歌暫停Project Ara模組手機項目》？</a>
                                </h2>
                                <div class="meta zg-gray">
                                    <a class="follow-link zg-follow meta-item" href="javascript:;"><i class="z-icon-follow"></i>关注问题</a>
                                    <span class="zg-bull">•</span>
                                    7 个回答
                                    <span class="zg-bull">•</span>
                                    17 个关注
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="zm-profile-section-wrap" id="zh-profile-activity-wrap">
                    <div class="zm-profile-section-head">
                        <a class="zm-profile-section-title" href="/people/excited-vczh/answer-card">
                            <h2 class="zm-profile-section-name">最新动态</h2>
                        </a>
                    </div>
                    <div class="zm-profile-section-list profile-feed-wrap">
                        <div id="zh-profile-activity-page-list">
                            <div class="zm-profile-section-item">
                                <span class="zm-profile-setion-time zg-gray zg-right">1 小时前</span>
                                <div class="zm-profile-section-main zm-profile-section-activity-main">
                                    <span class="author-link-line">
                                        <a href="vzch.html" class="zg-link author-link">vczh</a>
                                    </span>
                                    关注了问题
                                    <a class="question_link" href="question.html">阿里月饼事件会对阿里巴巴技术委员会主席王坚产生什么样的影响？</a>
                                </div>
                            </div>
                            <div class="zm-profile-section-item">
                                <span class="zm-profile-setion-time zg-gray zg-right">1 小时前</span>
                                <div class="zm-profile-section-main zm-profile-section-activity-main">
                                    <span class="author-link-line">
                                        <a href="vzch.html" class="zg-link author-link">vczh</a>
                                    </span>
                                    赞同了回答
                                    <a class="question_link" href="question.html">工程师文化一定是好的吗？</a>
                                </div>
                                <div class="zm-item-answer">
                                    <div class="zm-item-vote">
                                        <a href="javascript:;" class="zm-item-vote-count">74</a>
                                    </div>
                                    <div class="zm-votebar">
                                        <button class="up" title="赞同">
                                            <i class="icon vote-arrow"></i>
                                            <span class="count">74</span>
                                            <!--<span class="label">赞同</span>-->
                                        </button>
                                        <button class="down pressed" title="反对，不会显示您的姓名">
                                            <i class="icon vote-arrow"></i>
                                        </button>
                                    </div>
                                    <div class="answer-head">
                                        <div class="zm-item-answer-author-info">
                                            <span class="summary-wrapper">
                                                <span class="author-link-line">
                                                    <a class="author-link" href="/people/woshixiaosongshu">东洞主</a>
                                                </span>
                                                <span title="Materials Science, PhD" class="bio">戾气真重，这里的感觉越来越不好</span>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="zm-item-rich-text expandable">
                                        <div style="display: none;">我一直不太懂，HR，AE这种职业为什么这么拽。<br><br>
                                            他们存在的意义是什么，他们算是服务人员吧？<br><br>
                                            搞得像宦官一样<br>
                                            好像觉得自己高人一等，我把这行为叫做整天吃饱了没事干。<br><br>
                                            来你告诉我，哪件事是我做不来的？我大言不惭的说一句，你们做的就是打下手的活儿，人人都会做。要不然为什么离职率高？工作不好找？
                                        </div>
                                        <div class="zh-summary summary clearFix" style="display: block;">
                                            我一直不太懂，HR，AE这种职业为什么这么拽。 他们存在的意义是什么，他们算是服务人员吧？ 搞得像宦官一样。 好像觉得自己高人一等，我把这行为叫做整天吃饱了没事干。 来你告诉我，哪件事是我做不来的？我大言不惭的说一句，你们做的就是打下手的活儿，人…
                                            <a href="javascript:;" class="toggle-expand">显示全部</a>
                                        </div>
                                        <p class="expanded-visible">
                                            <a class="answer-date-link meta-item" href="/question/22049706/answer">编辑于 2014-12-24</a>
                                        </p>
                                    </div>
                                    <div class="feed-meta zm-item-meta clearFix">
                                        <div class="zm-meta-panel">
                                            <a href="javascript" class="follow-link zg-follow meta-item"><i class="z-icon-follow"></i>关注问题</a>
                                            <a href="javascript:;" class="toggle-comment meta-item" num="133"><i class="z-icon-comment"></i>133条评论</a>
                                            <a href="#" class="js-thank zu-autoHide meta-item"><i class="z-icon-thank"></i>感谢</a>
                                            <a href="#" class="js-share zu-autoHide meta-item"><i class="z-icon-share"></i>分享</a>
                                            <a href="#" class="js-collect zu-autoHide meta-item"><i class="z-icon-collect"></i>收藏</a>
                                            <span class="zg-bull zu-autoHide">•</span>
                                            <a href="#" class="js-noHelp zu-autoHide meta-item">没有帮助</a>
                                            <span class="zg-bull zu-autoHide">•</span>
                                            <a href="#" class="js-report zu-autoHide meta-item">举报</a>
                                            <span class="zg-bull">•</span>
                                            <a href="#" class="js-report meta-item">作者保留权利</a>
                                            <button class="item-collapse meta-item"><i class="z-icon-fold"></i>收起</button>
                                        </div>
                                        <div class="comment-app-holder" style="display: none">
                                            <div class="_commentBox-bordered-3Fo">
                                                <i class="icon ioc-spike"></i>
                                                <div class="_commentBox-list">
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">小虎</a> </div>
                                                            <div class="_commentItem-content">有道理</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>16</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/izong" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">izong</a> </div>
                                                            <div class="_commentItem-content">有道理</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>1</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/Jury" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">Jury</a> </div>
                                                            <div class="_commentItem-content">能不能具体说说弹性的来源？我记得高分子物理中讲弹性的产生要有交联点才成，氢键应当算是柔性的吧，那比较刚性的交联点在哪？</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>4</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/zhangyixuan" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">张以玄</a> </div>
                                                            <div class="_commentItem-content">没想到和化学键有关=_=</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>28</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/kunzhi" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header">
                                                                <a href="http://www.zhihu.com/people/xiaohu">Kunzhi</a>
                                                                <span><span>回复</span><a href="http://www.zhihu.com/people/jury">Jury</a></span>
                                                                <button class="_commentItem-openConversations _commentBox-textBtn">
                                                                    <i class="sprite-comment-icon-open-conversations"></i>
                                                                    <span>查看对话</span>
                                                                </button>
                                                            </div>
                                                            <div class="_commentItem-content">弹性不一定有交联点吧</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>1</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/wangbohu" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">王博虎</a> </div>
                                                            <div class="_commentItem-content">钓得一手好民科。</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>7</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header">
                                                                <a href="http://www.zhihu.com/people/xiaohu">Jury</a>
                                                                <span><span>回复</span><a href="http://www.zhihu.com/people/jury">Jury</a></span>
                                                                <button class="_commentItem-openConversations _commentBox-textBtn">
                                                                    <i class="sprite-comment-icon-open-conversations"></i>
                                                                    <span>查看对话</span>
                                                                </button>
                                                            </div>
                                                            <div class="_commentItem-content">没有这些点不就软了。。。</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>16</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">王博虎</a> </div>
                                                            <div class="_commentItem-content">……一查还真是，太久没接触化学了 = =</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>1</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">小短腿</a> </div>
                                                            <div class="_commentItem-content">长知识了</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>1</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">Angel毒毒</a> </div>
                                                            <div class="_commentItem-content">越看你们说越觉得我low 我要看书要看书 打滚儿！</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>9</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">阳昊</a> </div>
                                                            <div class="_commentItem-content">感觉萌萌哒！！</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu"></a></div>
                                                            <div class="_commentItem-content">那为什么烫头之后，在一定时间范围内，等吹干头发，头发又能恢复原来的造型呢？</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">失缚</a> </div>
                                                            <div class="_commentItem-content">为什么冬天比夏天头发更容易变形？</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>1</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">破小摔</a> </div>
                                                            <div class="_commentItem-content">好神奇</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>16</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">Nicole</a> </div>
                                                            <div class="_commentItem-content">为什么我用了自己的洗发水之后头发会干燥、篷开、很乱，但是用了理发店的之后就超级柔顺。。。（我用的都是儿童洗发水 难道是成人的洗发水真的有其他东西）</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">jinjunhuang</a> </div>
                                                            <div class="_commentItem-content">原来头发还有黑科技</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">朱一凡</a> </div>
                                                            <div class="_commentItem-content">alpha和beta差别那么大，加点水就能变过去？！ 果然是…不懂啊…</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>16</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">小豪</a> </div>
                                                            <div class="_commentItem-content">那是不是用高氢键 易挥发的东西洗头都可以复原。。比如 乙醇？！。。</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">石斑鱼子酱</a> </div>
                                                            <div class="_commentItem-content">我勒个去 这么复杂</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">尉迟江</a> </div>
                                                            <div class="_commentItem-content">感觉类似于加工工艺里的淬火和退火。如果是洗完头让其自然晾干的话，由于冬天头发环境温差大，降温速度快，相当于做了一个定型；而夏天温差会减小，头发内部的结构趋向于更稳定的状态（对头发而言最舒适的状态）。可能你说的不是洗头不洗头的问题，这样的话，可能就要考虑高分子的玻璃态了。头发在冬天的实际温度可能会低于其玻璃化转变温度，这样头发就会呈现刚硬性，外力引起的变形多为“永久”变形（至少一段时间不会自然恢复原状）；夏天实际温度可能会高于玻璃化转变温度，头发呈现较好的柔顺性和高弹性（这种高弹性可能肉眼不可见，但是微观上比较明显），这样看来反而是夏天的头发更容易变形，我自己的头发在冬天的时候就会变得比较硬。虽然头发是高分子，但是貌似也没人研究过头发的具体玻璃化转变温度。以上只是个人推断，才疏学浅，不当之处还请指教</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>6</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="_commentBox-pageBorder _pager_root">
                                                    <span class="_pager-item _pager-muted">上一页</span>
                                                    <span class="_pager-item _pager-muted">1</span>
                                                    <a class="_pager-item">2</a>
                                                    <a class="_pager-item">3</a>
                                                    <a class="_pager-item">4</a>
                                                    <a class="_pager-item">5</a>
                                                    <a class="_pager-item">下一页</a>
                                                </div>
                                                <div class="_commentForm-border">
                                                    <input type="text" class="_inputBox_root" placeholder="写下你的评论...">
                                                    <div class="zm-comment zg-clear">
                                                        <a href="#" class="zg-right zg-btn-blue">评论</a>
                                                        <a href="#" class="zm-comment-cancel">关闭</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <a style="cursor: pointer;" class="ignore"></a>
                                    </div>
                                </div>
                            </div>
                            <div class="zm-profile-section-item">
                                <span class="zm-profile-setion-time zg-gray zg-right">1 小时前</span>
                                <div class="zm-profile-section-main zm-profile-section-activity-main">
                                    <span class="author-link-line">
                                        <a href="vzch.html" class="zg-link author-link">vczh</a>
                                    </span>
                                    回答了回答
                                    <a class="question_link" href="question.html">工程师文化一定是好的吗？</a>
                                </div>
                                <div class="zm-item-answer">
                                    <div class="zm-item-vote">
                                        <a href="javascript:;" class="zm-item-vote-count">74</a>
                                    </div>
                                    <div class="zm-votebar">
                                        <button class="up" title="赞同">
                                            <i class="icon vote-arrow"></i>
                                            <span class="count">97</span>
                                            <!--<span class="label">赞同</span>-->
                                        </button>
                                        <button class="down pressed" title="反对，不会显示您的姓名">
                                            <i class="icon vote-arrow"></i>
                                        </button>
                                    </div>
                                    <div class="answer-head">
                                        <div class="zm-item-answer-author-info">
                                            <span class="summary-wrapper">
                                                <span class="author-link-line">
                                                    <a class="author-link" href="/people/woshixiaosongshu">vczh</a>
                                                </span>
                                                <span title="Materials Science, PhD" class="bio">专业造轮子，拉黑抢前排。…</span>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="zm-item-rich-text expandable">
                                        <div style="display: none;">工程师文化的意思就是说，码农门锁在一个房间里，互相不用照顾别人的感受，好好写代码，闷声大发财的意思。这当然是每个码农都向往的。不具有这样的文化的公司，会倾向于招不到牛逼的人，或者手上有牛逼的人也不在乎当老鼠一样玩。</div>
                                        <div class="zh-summary summary clearFix" style="display: block;">
                                            工程师文化的意思就是说，码农门锁在一个房间里，互相不用照顾别人的感受，好好写代码，闷声大发财的意思。这当然是每个码农都向往的。不具有这样的文化的公司，会倾向于招不到牛逼的人，或者手上有牛逼的人也不在乎当老鼠一样玩。
                                            <a href="javascript:;" class="toggle-expand">显示全部</a>
                                        </div>
                                        <p class="expanded-visible">
                                            <a class="answer-date-link meta-item" href="/question/22049706/answer">编辑于 2014-12-24</a>
                                        </p>
                                    </div>
                                    <div class="feed-meta zm-item-meta clearFix">
                                        <div class="zm-meta-panel">
                                            <a href="javascript" class="follow-link zg-follow meta-item"><i class="z-icon-follow"></i>关注问题</a>
                                            <a href="javascript:;" class="toggle-comment meta-item" num="133"><i class="z-icon-comment"></i>133条评论</a>
                                            <a href="#" class="js-thank zu-autoHide meta-item"><i class="z-icon-thank"></i>感谢</a>
                                            <a href="#" class="js-share zu-autoHide meta-item"><i class="z-icon-share"></i>分享</a>
                                            <a href="#" class="js-collect zu-autoHide meta-item"><i class="z-icon-collect"></i>收藏</a>
                                            <span class="zg-bull zu-autoHide">•</span>
                                            <a href="#" class="js-noHelp zu-autoHide meta-item">没有帮助</a>
                                            <span class="zg-bull zu-autoHide">•</span>
                                            <a href="#" class="js-report zu-autoHide meta-item">举报</a>
                                            <span class="zg-bull">•</span>
                                            <a href="#" class="js-report meta-item">作者保留权利</a>
                                            <button class="item-collapse meta-item"><i class="z-icon-fold"></i>收起</button>
                                        </div>
                                        <div class="comment-app-holder" style="display: none">
                                            <div class="_commentBox-bordered-3Fo">
                                                <i class="icon ioc-spike"></i>
                                                <div class="_commentBox-list">
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">小虎</a> </div>
                                                            <div class="_commentItem-content">有道理</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>16</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/izong" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">izong</a> </div>
                                                            <div class="_commentItem-content">有道理</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>1</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/Jury" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">Jury</a> </div>
                                                            <div class="_commentItem-content">能不能具体说说弹性的来源？我记得高分子物理中讲弹性的产生要有交联点才成，氢键应当算是柔性的吧，那比较刚性的交联点在哪？</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>4</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/zhangyixuan" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">张以玄</a> </div>
                                                            <div class="_commentItem-content">没想到和化学键有关=_=</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>28</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/kunzhi" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header">
                                                                <a href="http://www.zhihu.com/people/xiaohu">Kunzhi</a>
                                                                <span><span>回复</span><a href="http://www.zhihu.com/people/jury">Jury</a></span>
                                                                <button class="_commentItem-openConversations _commentBox-textBtn">
                                                                    <i class="sprite-comment-icon-open-conversations"></i>
                                                                    <span>查看对话</span>
                                                                </button>
                                                            </div>
                                                            <div class="_commentItem-content">弹性不一定有交联点吧</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>1</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/wangbohu" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">王博虎</a> </div>
                                                            <div class="_commentItem-content">钓得一手好民科。</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>7</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header">
                                                                <a href="http://www.zhihu.com/people/xiaohu">Jury</a>
                                                                <span><span>回复</span><a href="http://www.zhihu.com/people/jury">Jury</a></span>
                                                                <button class="_commentItem-openConversations _commentBox-textBtn">
                                                                    <i class="sprite-comment-icon-open-conversations"></i>
                                                                    <span>查看对话</span>
                                                                </button>
                                                            </div>
                                                            <div class="_commentItem-content">没有这些点不就软了。。。</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>16</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">王博虎</a> </div>
                                                            <div class="_commentItem-content">……一查还真是，太久没接触化学了 = =</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>1</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">小短腿</a> </div>
                                                            <div class="_commentItem-content">长知识了</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>1</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">Angel毒毒</a> </div>
                                                            <div class="_commentItem-content">越看你们说越觉得我low 我要看书要看书 打滚儿！</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>9</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">阳昊</a> </div>
                                                            <div class="_commentItem-content">感觉萌萌哒！！</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu"></a></div>
                                                            <div class="_commentItem-content">那为什么烫头之后，在一定时间范围内，等吹干头发，头发又能恢复原来的造型呢？</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">失缚</a> </div>
                                                            <div class="_commentItem-content">为什么冬天比夏天头发更容易变形？</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>1</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">破小摔</a> </div>
                                                            <div class="_commentItem-content">好神奇</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>16</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">Nicole</a> </div>
                                                            <div class="_commentItem-content">为什么我用了自己的洗发水之后头发会干燥、篷开、很乱，但是用了理发店的之后就超级柔顺。。。（我用的都是儿童洗发水 难道是成人的洗发水真的有其他东西）</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">jinjunhuang</a> </div>
                                                            <div class="_commentItem-content">原来头发还有黑科技</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">朱一凡</a> </div>
                                                            <div class="_commentItem-content">alpha和beta差别那么大，加点水就能变过去？！ 果然是…不懂啊…</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>16</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">小豪</a> </div>
                                                            <div class="_commentItem-content">那是不是用高氢键 易挥发的东西洗头都可以复原。。比如 乙醇？！。。</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">石斑鱼子酱</a> </div>
                                                            <div class="_commentItem-content">我勒个去 这么复杂</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="_commentBox-root-PQNS">
                                                        <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                            <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                        </a>
                                                        <div class="_commentItem_body">
                                                            <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">尉迟江</a> </div>
                                                            <div class="_commentItem-content">感觉类似于加工工艺里的淬火和退火。如果是洗完头让其自然晾干的话，由于冬天头发环境温差大，降温速度快，相当于做了一个定型；而夏天温差会减小，头发内部的结构趋向于更稳定的状态（对头发而言最舒适的状态）。可能你说的不是洗头不洗头的问题，这样的话，可能就要考虑高分子的玻璃态了。头发在冬天的实际温度可能会低于其玻璃化转变温度，这样头发就会呈现刚硬性，外力引起的变形多为“永久”变形（至少一段时间不会自然恢复原状）；夏天实际温度可能会高于玻璃化转变温度，头发呈现较好的柔顺性和高弹性（这种高弹性可能肉眼不可见，但是微观上比较明显），这样看来反而是夏天的头发更容易变形，我自己的头发在冬天的时候就会变得比较硬。虽然头发是高分子，但是貌似也没人研究过头发的具体玻璃化转变温度。以上只是个人推断，才疏学浅，不当之处还请指教</div>
                                                            <div class="_commentItem-footer">
                                                                <span class="_commentItem-links"><span>6</span><span>赞</span></span>
                                                                <time>2 年前</time>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-reply"></i>
                                                                    <span>回复</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-like"></i>
                                                                    <span>赞</span>
                                                                </button>
                                                                <button class="_commentItem-action _commentBox-textBtn">
                                                                    <i class="zg-icon zg-icon-comment-report"></i>
                                                                    <span>举报</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="_commentBox-pageBorder _pager_root">
                                                    <span class="_pager-item _pager-muted">上一页</span>
                                                    <span class="_pager-item _pager-muted">1</span>
                                                    <a class="_pager-item">2</a>
                                                    <a class="_pager-item">3</a>
                                                    <a class="_pager-item">4</a>
                                                    <a class="_pager-item">5</a>
                                                    <a class="_pager-item">下一页</a>
                                                </div>
                                                <div class="_commentForm-border">
                                                    <input type="text" class="_inputBox_root" placeholder="写下你的评论...">
                                                    <div class="zm-comment zg-clear">
                                                        <a href="#" class="zg-right zg-btn-blue">评论</a>
                                                        <a href="#" class="zm-comment-cancel">关闭</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <a style="cursor: pointer;" class="ignore"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a class="zg-btn-white zu-button-more">更多</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="zu-main-sidebar">
            <div class="zm-profile-side-following clearFix">
                <a class="item" href="/people/excited-vczh/followees">
                    <span class="zg-gray-normal">关注了</span>
                    <br>
                    <strong>1743</strong>
                    <label>人</label>
                </a>
                <a class="item" href="/people/excited-vczh/followers">
                    <span class="zg-gray-normal">关注者</span>
                    <br>
                    <strong>404756</strong>
                    <label>人</label>
                </a>
            </div>
            <div class="zm-profile-side-section">
                <div class="zm-side-section-inner zg-clear">
                    <div class="zm-profile-side-same-friends">
                        <div class="zm-profile-side-section-title">
                            我关注的人中，
                            <a href="javascript:;" class="zg-link-litblue">9 人</a>
                            也关注了他
                        </div>
                        <div class="zu-small-avatar-list">
                            <a href="vzch.html" class="zm-item-link-avatar">
                                <img src="img/xufei_s.jpg" class="zm-item-img-avatar">
                            </a>
                            <a href="vzch.html" class="zm-item-link-avatar">
                                <img src="img/stormzhang_s.jpg" class="zm-item-img-avatar">
                            </a>
                            <a href="vzch.html" class="zm-item-link-avatar">
                                <img src="img/winter_s.jpg" class="zm-item-img-avatar">
                            </a>
                            <a href="vzch.html" class="zm-item-link-avatar">
                                <img src="img/pannizhe_s.jpg" class="zm-item-img-avatar">
                            </a>
                            <a href="vzch.html" class="zm-item-link-avatar">
                                <img src="img/sunRua_s.jpg" class="zm-item-img-avatar">
                            </a>
                            <a href="vzch.html" class="zm-item-link-avatar">
                                <img src="img/You_hei_s.jpg" class="zm-item-img-avatar">
                            </a>
                            <a href="vzch.html" class="zm-item-link-avatar">
                                <img src="img/imbushuo_s.jpg" class="zm-item-img-avatar">
                            </a>
                            <a href="vzch.html" class="zm-item-link-avatar">
                                <img src="img/xiaojingmo_s.png" class="zm-item-img-avatar">
                            </a>
                            <a href="vzch.html" class="zm-item-link-avatar">
                                <img src="img/rednextFx_s.jpg" class="zm-item-img-avatar">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="zm-profile-side-section">
                <div class="zm-side-section-inner">
                    <div class="vote-thanks-relation zg-gray-normal">
                        <i class="zg-icon vote"></i>
                        我赞同他
                        <a href="javascript:;" class="zg-link-litblue">2 次</a>
                    </div>
                </div>
            </div>
            <div class="zm-profile-side-section">
                <div class="zm-side-section-inner zg-clear">
                    <div class="zm-profile-side-section-title">
                        关注了
                        <a href="javascript:;" class="zg-link-litblue"><strong>46 个专栏</strong></a>
                    </div>
                    <div class="zu-profile-side-columns">
                        <a href="javascript:;" class="link">
                            <img src="img/zhuanlan-1_l.jpg" class="Avatar Avatar--is">
                        </a>
                        <a href="javascript:;" class="link">
                            <img src="img/zhuanlan-1_l.jpg" class="Avatar Avatar--is">
                        </a>
                        <a href="javascript:;" class="link">
                            <img src="img/zhuanlan-1_l.jpg" class="Avatar Avatar--is">
                        </a>
                        <a href="javascript:;" class="link">
                            <img src="img/zhuanlan-1_l.jpg" class="Avatar Avatar--is">
                        </a>
                        <a href="javascript:;" class="link">
                            <img src="img/zhuanlan-1_l.jpg" class="Avatar Avatar--is">
                        </a>
                        <a href="javascript:;" class="link">
                            <img src="img/zhuanlan-1_l.jpg" class="Avatar Avatar--is">
                        </a>
                        <a href="javascript:;" class="link">
                            <img src="img/zhuanlan-1_l.jpg" class="Avatar Avatar--is">
                        </a>
                    </div>
                </div>
            </div>
            <div class="zm-profile-side-section">
                <div class="zm-side-section-inner zg-clear">
                    <div class="zm-profile-side-section-title">
                        关注了
                        <a href="javascript:;" class="zg-link-litblue"><strong>27 个话题</strong></a>
                    </div>
                    <div class="zu-profile-side-topics">
                        <a href="javascript:;" class="link">
                            <img src="img/huati-1_l.jpg" class="Avatar Avatar--l">
                        </a>
                        <a href="javascript:;" class="link">
                            <img src="img/huati-1_l.jpg" class="Avatar Avatar--l">
                        </a>
                        <a href="javascript:;" class="link">
                            <img src="img/huati-1_l.jpg" class="Avatar Avatar--l">
                        </a>
                        <a href="javascript:;" class="link">
                            <img src="img/huati-1_l.jpg" class="Avatar Avatar--l">
                        </a>
                        <a href="javascript:;" class="link">
                            <img src="img/huati-1_l.jpg" class="Avatar Avatar--l">
                        </a>
                        <a href="javascript:;" class="link">
                            <img src="img/huati-1_l.jpg" class="Avatar Avatar--l">
                        </a>
                        <a href="javascript:;" class="link">
                            <img src="img/huati-1_l.jpg" class="Avatar Avatar--l">
                        </a>
                    </div>
                </div>
            </div>
            <div class="zm-profile-side-section">
                <div class="zm-side-section-inner zg-clear">
                    <ul id="profile-side-op" class="profile-side-op">
                        <li>
                            <a href="javascript:;" class="zg-link-gray-normal">举报用户</a>
                        </li>
                        <li>
                            <a href="javascript:;" class="zg-link-gray-normal">屏蔽用户</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="zm-profile-side-section">
                <div class="zm-side-section-inner zg-clear">
                    <span class="zg-gray-normal">
                        个人主页被
                        <strong>448659</strong>
                        人浏览
                    </span>
                </div>
            </div>
            <div class="zh-footer">
                <div class="zh-footer-inner zg-warp">
                    <ul>
                        <li><a href="http://liukanshan.zhihu.com">刘看山</a></li>
                        <li><a href="http://liukanshan.zhihu.com">知乎指南</a></li>
                        <li><a href="http://liukanshan.zhihu.com">建议反馈</a></li>
                        <li><a href="http://liukanshan.zhihu.com">移动应用</a></li>
                        <li><a href="http://liukanshan.zhihu.com">加入知乎</a></li>
                        <li><a href="http://liukanshan.zhihu.com">知乎协议</a></li>
                        <li><a href="http://liukanshan.zhihu.com">联系我们</a></li>
                    </ul>
                    <span class="copy">© 2016 知乎</span>
                </div>
            </div>
        </div>
    </div>
    <div class="modal-dialog-bg" style="opacity: 0.5; width: 100%; height: 100%; display: none"></div>
    <div class="modal-wrapper hidden">
        <div class="modal-dialog absolute-position" style="width: 550px">
            <div class="modal-dialog-title">
                <span class="modal-dialog-title-text">提问</span>
                <span class="modal-dialog-title-close"></span>
            </div>
            <div class="modal-dialog-content">
                <div class="zh-add-question-form">
                    <div class="js-add-question-splash">
                        <p>
                            知乎是一个真诚，友善，认真，互助的社区<br>
                            我们希望每一个疑惑都有解答，好的问题更容易得到好的答案
                            <a href="//www.zhihu.com/question/19555761">如何提一个好问题？</a>
                        </p>
                        <p>
                            <b>提问应遵循真实，客观，简洁，明确，规范的原则</b><br>
                            1、提问应尽可能简洁明了，避免「请问」「有谁知道」「谢谢！」等与问题本身无关的附加语。<br>
                            2、应避免使用「为神马」「童鞋」「肿么办」等网络用语。<br>
                            3、基于个人判断或传言的问题，在提问时应在补充说明里详细说明原由<br>
                            4、避免太宽泛问题，如调查性的问题容易变成每个人都可以发表观点，但对其他人没有价值。<br>
                        </p>
                        <p>
                            <b>知乎禁止这些提问</b><br>
                            1、和已有问题完全重复的问题，<b>为避免重复，提问前可以先进行搜索</b><br>
                            2、招聘 / 求职、交易 / 合作、寻人 / 征友、召集 / 赠送、求码类内容<br>
                            3、投票类问题。例如：你支持方舟子还是韩寒？<br>
                            4、作业或其他希望代为完成个人任务类的内容，以及针对个人具体病情的求医问药类问题<br>
                            完整的提问建议可查看<a href="//www.zhihu.com/question/19806261">知乎的提问规范有哪些？</a><br>
                        </p>
                        <div class="before-ask-from">
                            <b>提问前请先搜索</b>
                            <div style="margin-top: 18px">
                                <input type="text" class="zg-from-text-input" placeholder="请输入你的问题">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script type="text/javascript" src="people.js"></script>
    <div></div>
</body>
</html>