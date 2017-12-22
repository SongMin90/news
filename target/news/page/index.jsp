<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>main</title>
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
                        <a href="${pageContext.request.contextPath}/main.html"><i class="zg-icon zg-icon-pm"></i>后台管理</a>
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
                <div class="zg-section" id="zh-home-list-title">
                    <i class="zg-icon zg-icon-feedlist"></i>
                    最新动态
                    <a href="/setting/filter" class="zg-link-gray-normal">
                        <i class="zg-icon zg-icon-settings"></i>
                        设置
                    </a>
                </div>
                <div class="zu-main-feed-con">
                    <div id="js-home-feed-list" class="zh-general-list clearFix">
                        <div class="feed-item" id="feedID-1001">
                            <div class="avatar">
                                <a href="/people/rednaxelafx" class="zm-item-link-avatar">
                                    <img src="img/people-2.jpg" class="zm-item-avatar-img">
                                </a>
                            </div>
                            <div class="feed-main">
                                <div class="feed-source">
                                    <a href="https://www.zhihu.com/people/rednaxelafx">RednaxelaFX</a>
                                    赞同该回答
                                    <span class="time">51 分钟前</span>
                                </div>
                                <div class="feed-content">
                                    <h2>
                                        <a href="/question/22049706" class="question-link">头发睡觉后变形，为什么洗过后就会恢复？</a>
                                    </h2>
                                    <div class="entry-body">
                                        <div class="zm-item-vote">
                                            <a class="zm-item-vote-count">1889</a>
                                        </div>
                                        <div class="zm-votebar">
                                            <button class="up pressed" title="赞同">
                                                <i class="icon vote-arrow"></i>
                                                <span class="count">1889</span>
                                                <!--<span class="label">赞同</span>-->
                                            </button>
                                            <button class="down" title="反对，不会显示您的姓名">
                                                <i class="icon vote-arrow"></i>
                                            </button>
                                        </div>
                                        <div class="zm-item-answer-author-info">
                                            <span class="summary-wrapper">
                                                <span class="author-link-line">
                                                    <a class="author-link" href="/people/woshixiaosongshu">VincentFu</a>
                                                </span>
                                                <span title="Materials Science, PhD" class="bio">Materials Science, PhD</span>
                                            </span>
                                        </div>
                                        <div class="zm-item-rich-text expandable">
                                            <div style="display: none;">头发内部的α-角蛋白分子内的<b>氢键</b>，负责了头发约50%的弹性，既然睡觉能把头发睡乱，说明在外力（头部与枕头之间的挤压）作用下，氢键的排列和取向发生了难以恢复的变化，类似材料学中的塑性形变。而水，之所以能恢复头发原本的形状，源自于水中大量的氢键与毛发内部的氢键的相互作用，简单说就是水分子插入了α-角蛋白分子，形成了β-结构。而且恰巧水中氢键的键强较大，它对α-角蛋白内的氢键的攻击可以轻而易举地使后者断裂，从而使这种由外力产生氢键排列和取向土崩瓦解，待水分挥发后，β结构降解为α结构，头发内的氢键再按照头发本来喜欢的方式重新连接，恢复形状。</div>
                                            <div class="zh-summary summary clearFix" style="display: block;">
                                                头发内部的α-角蛋白分子内的<b>氢键</b>，负责了头发约50%的弹性，既然睡觉能把头发睡乱，说明在外力（头部与枕头之间的挤压）作用下，氢键的排列和取向发生了难以恢复的变化，类似材料学中的塑性形变。而水，之所以能恢复头发原本的形状，源自于水中大量的氢键与…
                                                <a href="javascript:;" class="toggle-expand">显示全部</a>
                                            </div>
                                            <p class="expanded-visible">
                                                <a class="answer-date-link meta-item" href="/question/22049706/answer">编辑于 2014-12-24</a>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="feed-meta">
                                        <div class="zm-item-meta clearFix">
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
                                        </div>
                                        <a style="cursor: pointer;" class="ignore"></a>
                                    </div>
                                </div>
                            </div>
                            <div class="feed-item-options hidden"></div>
                        </div>
                        <div class="feed-item" id="feedID-1002">
                            <div class="avatar">
                                <a href="/people/rednaxelafx" class="zm-item-link-avatar">
                                    <img src="img/people-1.jpg" class="zm-item-avatar-img">
                                </a>
                            </div>
                            <div class="feed-main">
                                <div class="feed-source">
                                    <a href="https://www.zhihu.com/people/rednaxelafx">vczh</a>
                                    赞同该回答
                                    <span class="time">60 分钟前</span>
                                </div>
                                <div class="feed-content">
                                    <h2>
                                        <a href="/question/22049706" class="question-link">有哪些有趣的单词的演变或起源的故事？</a>
                                    </h2>
                                    <div class="entry-body">
                                        <div class="zm-item-vote">
                                            <a class="zm-item-vote-count">144</a>
                                        </div>
                                        <div class="zm-votebar">
                                            <button class="up" title="赞同">
                                                <i class="icon vote-arrow"></i>
                                                <span class="count">144</span>
                                                <!--<span class="label">赞同</span>-->
                                            </button>
                                            <button class="down" title="反对，不会显示您的姓名">
                                                <i class="icon vote-arrow"></i>
                                            </button>
                                        </div>
                                        <div class="zm-item-answer-author-info">
                                            <span class="summary-wrapper">
                                                <span class="author-link-line">
                                                    <a class="author-link" href="/people/woshixiaosongshu">阳处父</a>
                                                </span>
                                                <span title="Materials Science, PhD" class="bio"></span>
                                            </span>
                                        </div>
                                        <div class="zm-item-rich-text expandable">
                                            <div style="display: none;">
                                                英语 boobs 的意思大家都知道——奶子。<br><br>
                                                <img src="img/answer-2/pic-1.jpg"><br>
                                                可 boobs 的词源却是拉丁语 puppa，意思是未成年的小女孩。<br><br>
                                                <img src="img/answer-2/pic-2.jpg"><br>
                                                萝莉控和巨乳控猛然发觉，双方系出同源，就此化干戈为玉帛，真是可喜可贺可喜可贺啊！
                                            </div>
                                            <div class="zh-summary summary clearFix" style="display: block;">
                                                <img src="img/answer-2/preview-1.jpg" class="origin-image inline-image">
                                                英语 boobs 的意思大家都知道——奶子。可 boobs 的词源却是拉丁语 puppa，意思是未成年的小女孩。萝莉控和巨乳控猛然发觉，双方系出同源，就此化干戈为玉帛，真是可喜可贺可喜可贺啊！
                                                <a href="javascript:;" class="toggle-expand">显示全部</a>
                                            </div>
                                            <p class="expanded-visible">
                                                <a class="answer-date-link meta-item" href="/question/22049706/answer">编辑于 2014-12-24</a>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="feed-meta">
                                        <div class="zm-item-meta clearFix">
                                            <div class="zm-meta-panel">
                                                <a href="javascript" class="follow-link zg-follow meta-item"><i class="z-icon-follow"></i>关注问题</a>
                                                <a href="javascript:;" class="toggle-comment meta-item" num="4"><i class="z-icon-comment"></i>4条评论</a>
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
                                                    <i class="icon icon-spike"></i>
                                                    <div class="_commentBox-list">
                                                        <div class="_commentBox-root-PQNS">
                                                            <a href="https//www.zhihu.com/people/xiaohu-72" class="_commentBox-avatarLink">
                                                                <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                            </a>
                                                            <div class="_commentItem_body">
                                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">刘南飞</a> </div>
                                                                <div class="_commentItem-content"><a href="/people/excited-vczh">@vczh</a></div>
                                                                <div class="_commentItem-footer">
                                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                                    <time>2 天前</time>
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
                                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">frost吴</a> </div>
                                                                <div class="_commentItem-content">迷之演变</div>
                                                                <div class="_commentItem-footer">
                                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                                    <time>2 天前</time>
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
                                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">梦中醒不来</a> </div>
                                                                <div class="_commentItem-content">自从来了知乎，身体越来越差了</div>
                                                                <div class="_commentItem-footer">
                                                                    <span class="_commentItem-links"><span>1</span><span>赞</span></span>
                                                                    <time>2 天前</time>
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
                                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">warefox</a> </div>
                                                                <div class="_commentItem-content">西野翔？</div>
                                                                <div class="_commentItem-footer">
                                                                    <span class="_commentItem-links"><span>3</span><span>赞</span></span>
                                                                    <time>2 天前</time>
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
                                                    <div class="_commentBox-pageBorder _pager_root hidden">
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
                                        </div>
                                        <a style="cursor: pointer;" class="ignore"></a>
                                    </div>
                                </div>
                            </div>
                            <div class="feed-item-options hidden"></div>
                        </div>
                        <div class="feed-item" id="feedID-1003">
                            <div class="avatar">
                                <a href="/people/rednaxelafx" class="zm-item-link-avatar">
                                    <img src="img/people-1.jpg" class="zm-item-avatar-img">
                                </a>
                            </div>
                            <div class="feed-main">
                                <div class="feed-source">
                                    <a href="https://www.zhihu.com/people/rednaxelafx">vczh</a>
                                    关注了该问题
                                    <span class="time">2 小时前</span>
                                </div>
                                <div class="feed-content">
                                    <h2>
                                        <a href="/question/22049706" class="question-link">为什么现在没人建造世界奇迹了，像金字塔，长城等等这种，等到下一个5000年人们看到的古文明又是怎样的？</a>
                                    </h2>
                                    <div class="feed-meta">
                                        <div class="zm-item-meta clearFix">
                                            <div class="zm-meta-panel">
                                                <a href="javascript" class="follow-link zg-follow meta-item"><i class="z-icon-follow"></i>关注问题</a>
                                                <a href="javascript:;" class="toggle-comment meta-item" num="12"><i class="z-icon-comment"></i>12条评论</a>
                                                <span class="zg-bull">•</span>
                                                <a href="/question/1001" class="meta-item">46个回答</a>
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
                                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">davidz</a></div>
                                                                <div class="_commentItem-content">因为都被抢了（手动滑稽</div>
                                                                <div class="_commentItem-footer">
                                                                    <span class="_commentItem-links"><span>4</span><span>赞</span></span>
                                                                    <time>11：43</time>
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
                                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">扶焰</a></div>
                                                                <div class="_commentItem-content">世界杯奥运会巴西天天给你看耶稣圣像，不是瞎子都能看到这个世界奇迹吧，你以为这是古代的东西？</div>
                                                                <div class="_commentItem-footer">
                                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                                    <time>12：05</time>
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
                                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">张中文</a></div>
                                                                <div class="_commentItem-content">题主，discovery频道《超级工程》那些放现在都是建筑奇迹</div>
                                                                <div class="_commentItem-footer">
                                                                    <span class="_commentItem-links"><span>2</span><span>赞</span></span>
                                                                    <time>12:17/time>
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
                                                                <div class="_commentItem-header">
                                                                    <a href="http://www.zhihu.com/people/xiaohu">噗噗个噗</a>
                                                                    <span><span>回复</span><a href="http://www.zhihu.com/people/davidz">davidz</a></span>
                                                                    <button class="_commentItem-openConversations _commentBox-textBtn">
                                                                        <i class="sprite-comment-icon-open-conversations"></i>
                                                                        <span>查看对话</span>
                                                                    </button>
                                                                </div>
                                                                <div class="_commentItem-content">幸好我们国家手快，点了电子计算机就马上大工抢奇观（好像有哪里不对）</div>
                                                                <div class="_commentItem-footer">
                                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                                    <time>12:22</time>
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
                                                        </div> <!--有回复-->
                                                        <div class="_commentBox-root-PQNS">
                                                            <a href="https//www.zhihu.com/people/Jury" class="_commentBox-avatarLink">
                                                                <img class="Avatar Avatar-s" src="img/people-3_s.jpg">
                                                            </a>
                                                            <div class="_commentItem_body">
                                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">oceans deep</a></div>
                                                                <div class="_commentItem-content">相比几千年前的世界奇迹，现在的大型建筑，简直是神迹了吧。。。。</div>
                                                                <div class="_commentItem-footer">
                                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                                    <time>12:49</time>
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
                                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">Millaboreus</a></div>
                                                                <div class="_commentItem-content">造个火箭上天算不算</div>
                                                                <div class="_commentItem-footer">
                                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                                    <time>12:51</time>
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
                                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">魏冠东</a></div>
                                                                <div class="_commentItem-content">文明玩多了...</div>
                                                                <div class="_commentItem-footer">
                                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                                    <time>12:57</time>
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
                                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">非天</a></div>
                                                                <div class="_commentItem-content">每次看知乎都会被它的沦落水平刷新，现在已是满屏连“奇迹”俩字是什么意思都弄不清的真*小学生水平言论了</div>
                                                                <div class="_commentItem-footer">
                                                                    <span class="_commentItem-links"><span>1</span><span>赞</span></span>
                                                                    <time>17:06</time>
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
                                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">echo1937</a></div>
                                                                <div class="_commentItem-content">现在的超级工程哪个不是"世界奇迹"?</div>
                                                                <div class="_commentItem-footer">
                                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                                    <time>17:06</time>
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
                                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">王邻居</a></div>
                                                                <div class="_commentItem-content">政府已经在人民允许的范围里创造奇迹了。
                                                                    要跟你想象中那样动全国之力造一两个建筑，就算不被国际人权组织抗议，国内早炸锅了。。。</div>
                                                                <div class="_commentItem-footer">
                                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                                    <time>17:44</time>
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
                                                    <div class="_commentBox-pageBorder _pager_root hidden">
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
                                        </div>
                                        <a style="cursor: pointer;" class="ignore"></a>
                                    </div>
                                </div>
                            </div>
                            <div class="feed-item-options hidden"></div>
                        </div>
                        <div class="feed-item" id="feedID-1004">
                            <div class="avatar">
                                <a href="/people/rednaxelafx" class="zm-item-link-avatar">
                                    <img src="img/people-1.jpg" class="zm-item-avatar-img">
                                </a>
                            </div>
                            <div class="feed-main">
                                <div class="feed-source">
                                    <a href="https://www.zhihu.com/people/rednaxelafx">vczh</a>
                                    回答了该问题
                                    <span class="time">7 小时前</span>
                                </div>
                                <div class="feed-content">
                                    <h2>
                                        <a href="/question/22049706" class="question-link">难道Mac的设计人员真的不觉得他们设计的键盘很难用吗？</a>
                                    </h2>
                                    <div class="entry-body">
                                        <div class="zm-item-vote">
                                            <a href="javascript:;" class="zm-item-vote-count">14</a>
                                        </div>
                                        <div class="zm-votebar">
                                            <button class="up" title="赞同">
                                                <i class="icon vote-arrow"></i>
                                                <span class="count">14</span>
                                                <!--<span class="label">赞同</span>-->
                                            </button>
                                            <button class="down pressed" title="反对，不会显示您的姓名">
                                                <i class="icon vote-arrow"></i>
                                            </button>
                                        </div>
                                        <div class="zm-item-rich-text expandable">
                                            <div style="display: none;">
                                                说是这样说，但是架不住很多mac用户就觉得那东西好用，只能证明你不是mac的目标用户——其实我也不是（逃
                                            </div>
                                            <div class="zh-summary summary clearFix" style="display: block;">
                                                说是这样说，但是架不住很多mac用户就觉得那东西好用，只能证明你不是mac的目标用户——其实我也不是（逃
                                                <a href="javascript:;" class="toggle-expand">显示全部</a>
                                            </div>
                                            <p class="expanded-visible">
                                                <a class="answer-date-link meta-item" href="/question/22049706/answer">编辑于 2014-12-24</a>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="feed-meta">
                                        <div class="zm-item-meta clearFix">
                                            <div class="zm-meta-panel">
                                                <a href="javascript" class="follow-link zg-follow meta-item"><i class="z-icon-follow"></i>关注问题</a>
                                                <a href="javascript:;" class="toggle-comment meta-item" num="4"><i class="z-icon-comment"></i>4条评论</a>
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
                                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">德州扒鸭</a> </div>
                                                                <div class="_commentItem-content">只是设计师认为键盘手感不重要而已</div>
                                                                <div class="_commentItem-footer">
                                                                    <span class="_commentItem-links"><span>4</span><span>赞</span></span>
                                                                    <time>6 小时前</time>
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
                                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">饼干的荣耀</a></div>
                                                                <div class="_commentItem-content">这次终于（逃</div>
                                                                <div class="_commentItem-footer">
                                                                    <span class="_commentItem-links"><span>1</span><span>赞</span></span>
                                                                    <time>6 小时前</time>
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
                                                                <div class="_commentItem-header">匿名用户（提问者）</div>
                                                                <div class="_commentItem-content">意思是Mac用户日常都没有大量的键盘使用需求吗？😂我真觉得人和人的感受不可能差距这么大，对比一下别的laptop或者长期使用Mac后，应该是很容易得出难用的结论的吧？然而Mac系笔记本居然可以卖得这么好，这么多人追捧，难道是推翻了“键盘手感是超极本的重要属性”这一说法？</div>
                                                                <div class="_commentItem-footer">
                                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                                    <time>6 小时前</time>
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
                                                                <div class="_commentItem-header">
                                                                    <a href="http://www.zhihu.com/people/xiaohu">vczh</a>
                                                                    <span><span>（作者）回复匿名用户（提问者）</span></span>
                                                                    <button class="_commentItem-openConversations _commentBox-textBtn">
                                                                        <i class="sprite-comment-icon-open-conversations"></i>
                                                                        <span>查看对话</span>
                                                                    </button>
                                                                </div>
                                                                <div class="_commentItem-content">你应该去问那些使用mac的程序员，让他们评价一下。</div>
                                                                <div class="_commentItem-footer">
                                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                                    <time>2 天前</time>
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
                                                    <div class="_commentBox-pageBorder _pager_root hidden">
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
                                        </div>
                                        <a style="cursor: pointer;" class="ignore"></a>
                                    </div>
                                </div>
                            </div>
                            <div class="feed-item-options hidden"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="zu-main-sidebar">
            <div class="shameimaru-section">
                <a class="shameimaru-link" href="javascript">
                    <img src="img/shameimaru.jpg" alt="Coding 8月-首页右上">
                </a>
                <a class="shameimaru-close z-ico-shameimaru-close"></a>
            </div>
            <div class="zm-side-section">
                <div class="zm-side-section-inner">
                    <div class="zm-side-section-group">
                        <ul class="zm-side-nav">
                            <li class="zm-side-nav-li">
                                <a href="/collections" class="zm-side-nav-link">
                                    <i class="zg-icon zg-icon-sidenav-fav"></i>
                                    我的收藏
                                    <span class="zg-num">174</span>
                                </a>
                            </li>
                            <li class="zm-side-nav-li">
                                <a href="/question/following" class="zm-side-nav-link">
                                    <i class="zg-icon zg-icon-sidenav-follow"></i>
                                    我关注的问题
                                </a>
                            </li>
                            <li class="zm-side-nav-li">
                                <a href="/collections" class="zm-side-nav-link">
                                    <i class="zg-icon zg-icon-sidenav-invite"></i>
                                    邀请我回答的问题
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="zm-side-section-group">
                        <ul class="zm-side-nav">
                            <li class="zm-side-nav-li">
                                <a href="/collections" class="zm-side-nav-link">
                                    <i class="zg-icon zg-icon-sidenav-plaza"></i>
                                    话题广场
                                </a>
                            </li>
                            <li class="zm-side-nav-li">
                                <a href="/question/following" class="zm-side-nav-link">
                                    <i class="zg-icon zg-icon-sidenav-publicEdit"></i>
                                    公共编辑动态
                                </a>
                            </li>
                            <li class="zm-side-nav-li">
                                <a href="/collections" class="zm-side-nav-link">
                                    <i class="zg-icon zg-icon-sidenav-invite"></i>
                                    社区服务中心
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="siderbarSection siderbarListNav zm-side-my-columns">
                <h3>知乎专栏</h3>
                <ul class="">
                    <li class="zm-side-nav-li">
                        <a class="column-link zm-side-nav-link" href="http://zhuanlan.zhihu.com/">
                            <i class="sprite-sidebar-column icon-column-log-active"></i>
                            <span class="name">专栏・发现</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="siderbarSection siderbarListNav">
                <ul class="">
                    <li class="zm-side-nav-li">
                        <a class="column-link zm-side-nav-link" href="http://zhuanlan.zhihu.com/">
                            <i class="sprite-sidebar-column sprite-sidebar-icon-zhi"></i>
                            <span class="name">下载App</span>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="zh-footer" id="zh-footer">
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
    <script type="text/javascript" src="main.js"></script>
    <div></div>
</body>
</html>