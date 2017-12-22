<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>question</title>
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
                <div class="zm-tag-editor zg-section">
                    <div class="zm-tag-editor-labels zg-clear">
                        <a class="zm-item-tag" href="/topic/00001">前段开发</a>
                        <a class="zm-item-tag" href="/topic/00001">程序员</a>
                        <a class="zm-item-tag" href="/topic/00001">Git</a>
                        <a class="zm-item-tag" href="/topic/00001">GitHub</a>
                        <a class="zu-edit-button" href="javascript:;" name="edit">
                            <i class="zu-edit-button-icon"></i>
                            修改
                        </a>
                    </div>
                </div>
                <div id="zh-question-title" class="zm-editable-status-normal">
                    <h2 class="zm-item-title">
                        <span>用GitHub一定要用命令行吗？用命令行一定高贵吗？
                            <a class="zu-edit-button" href="javascript:;" name="edit">
                                <i class="zu-edit-button-icon"></i>
                                修改
                            </a>
                        </span>
                    </h2>
                </div>
                <div id="zh-question-detail">
                    <div>
                        曾经面试官问我github熟悉吗，我说熟悉，他说命令熟悉吗，我说我用的GUI（官方提供的桌面端和webstorm集成的github插件，就够用了），他说，怎么能用GUI，你这太不专业了，必须得用命令行啊。然后一脸嘲讽……
                        <br>
                        我觉得github只是工具，怎么方便怎么来，而且目前工作也没用到太多的git复杂的命令，之前也学过，不用也都忘了些，我觉得工具方便我的开发就行，为什么要瞧不起用界面的呢？
                        <a class="zu-edit-button" href="javascript:;" name="edit">
                            <i class="zu-edit-button-icon"></i>
                            修改
                        </a>
                    </div>
                </div>
                <div class="zm-item-meta" id="zh-question-meta-wrap">
                    <div class="zm-meta-panel">
                        <a href="#" class="report zg-right">
                            <i class="z-icon-report-o"></i>举报
                        </a>
                        <a href="#" name="add-comment" class="toggle-comment meta-item">
                            <i class="z-icon-comment"></i>13条评论
                        </a>
                        <a href="#" name="share" class="share meta-item goog-inline-block">
                            <div class="goog-inline-block">
                                <div class="goog-inline-block goog-menu-button-caption">
                                    <i class="z-icon-share"></i>分享
                                </div>
                            </div>
                        </a>
                        <span class="zg-bull">•</span>
                        <a href="#" name="invite" class="meta-item">邀请回答</a>
                    </div>
                    <div class="panel-container">
                        <div class="question-invite-panel"></div>
                        <div class="zm-comment-box">
                            <i class="icon icon-spike" style="left: 37.5px"></i>
                            <div class="zm-comment-list">
                                <div class="zm-item-comment">
                                    <a class="zm-item-link-avatar" href="/people/001">
                                        <img src="img/people-3_s.jpg">
                                    </a>
                                    <div class="zm-comment-content-wrap">
                                        <div class="zm-comment-hd">
                                            <span class="author-link-line">
                                                <a href="https://www.zhihu.com/people">you conquer</a>
                                            </span>
                                            <div class="zm-comment-content">如果没记错的话，GUI能完成的操作是有缺失的，有些花式黑科技还是要命令行</div>
                                        </div>
                                        <div class="zm-comment-ft">
                                            <span class="date">昨天 18:02</span>
                                            <a href="#" class="reply zm-comment-op-link">
                                                <i class="zg-icon zg-icon-comment-reply"></i>回复
                                            </a>
                                            <a href="#" class="like zm-comment-op-link">
                                                <i class="zg-icon zg-icon-comment-like"></i>赞
                                            </a>
                                            <a href="#" class="like zm-comment-op-link">
                                                <i class="zg-icon zg-icon-comment-report"></i>举报
                                            </a>
                                            <span class="like-num">
                                                <em>1</em>
                                                <span>赞</span>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <a href="javascript:;" class="load-more">
                                    <span class="text">显示全部5条评论</span>
                                </a>
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
                <div class="zh-answer-title">
                    <div id="zh-answer-filter" class="sorter">
                        <span class="lbl">默认排序</span>
                        <a class="lbl" href="javascript:;">按时间排序</a>
                        <i class="zg-icon zg-icon-double-arrow"></i>
                    </div>
                    <h3 data-num="187" id="zh-question-answer-num">187 个回答</h3>
                </div>
                <div id="zh-question-answer-wrap" class="zh-question-answer-wrapper">
                    <div class="zm-item-answer zm-item-expanded">
                        <div class="zm-votebar">
                            <button class="up" title="赞同">
                                <i class="icon vote-arrow"></i>
                                <span class="count">14</span>
                            </button>
                            <button class="down pressed" title="反对，不会显示您的姓名">
                                <i class="icon vote-arrow"></i>
                            </button>
                        </div>
                        <div class="answer-head">
                            <div class="zm-item-answer-author-info">
                                <a class="zm-item-link-avatar">
                                    <img src="img/people-3_s.jpg" class="Avatar">
                                </a>
                                <span class="summary-wrapper">
                                    <span class="author-link-line">
                                        <a class="author-link" href="/people/woshixiaosongshu">何钦尧</a>
                                    </span>
                                    <span title="Materials Science, PhD" class="bio">闭关读书</span>
                                </span>
                            </div>
                            <div class="zm-item-vote-info">
                                <span class="voters text">
                                    <a href="#" class="more text">
                                        <span class="js-voteCount">14</span>&nbsp;个赞同
                                    </a>
                                </span>
                            </div>
                        </div>
                        <div class="zm-item-rich-text expandable">
                            <div class="zh-summary clearFix" style="display: none;"></div>
                            <div class="zm-editable-content clearFix">讲道理反正我一直用SourceTree，几乎已经提供了足够强大的各种相关功能了，不少东西（尤其是看diff）可视化的起来也确实比命令敲起来方便很多，而且毕竟平时常用的其实也就那么几条而已。以及还有Jetbrains系列提供的各种交互式rebase和merge工具也非常好用，远远比命令行方便太多。
                                <br>
                                <br>不过Git的命令行操作还是得掌握一些的，虽然不是叫你每一条都背得。毕竟在处理那些神一样的复杂操作的时候我还是会首先选择去查一下文档。
                                <br>
                                <br>只有几种情况我会不适用GUI而用Git命令：<br>
                                <ul>
                                    <li>项目太小以至于我根本懒得在SourceTree里面再给他开一栏</li>
                                    <li>有一些神一样的鬼畜级操作还是得要在命令行才能完成（然而并不会经常用到）</li>
                                    <li>在服务器上写代码没有GUI的时候</li>
                                </ul>
                            </div>
                        </div>
                        <div class="zm-item-meta answer-action">
                            <div class="zm-meta-panel">
                                <a class="answer-date-link meta-item">编辑于 昨天 23:49</a>
                                <a href="javascript:;" class="toggle-comment meta-item" num="4"><i class="z-icon-comment"></i>4&nbsp;条评论</a>
                                <a href="#" class="js-thank zu-autoHide meta-item"><i class="z-icon-thank"></i>感谢</a>
                                <a href="#" class="js-share zu-autoHide meta-item"><i class="z-icon-share"></i>分享</a>
                                <a href="#" class="js-collect zu-autoHide meta-item"><i class="z-icon-collect"></i>收藏</a>
                                <span class="zg-bull zu-autoHide">•</span>
                                <a href="#" class="js-noHelp zu-autoHide meta-item">没有帮助</a>
                                <span class="zg-bull zu-autoHide">•</span>
                                <a href="#" class="js-report zu-autoHide meta-item">举报</a>
                                <span class="zg-bull">•</span>
                                <a href="#" class="js-report meta-item">作者保留权利</a>
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
                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">Gee Law</a></div>
                                                <div class="_commentItem-content">……为什么要在服务器上写</div>
                                                <div class="_commentItem-footer">
                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                    <time>22 小时前</time>
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
                                                <div class="_commentItem-header">
                                                    <a href="http://www.zhihu.com/people/xiaohu">何钦尧</a>
                                                    <span><span>（作者） 回复</span><a href="http://www.zhihu.com/people/davidz">Gee Law</a></span>
                                                    <button class="_commentItem-openConversations _commentBox-textBtn">
                                                        <i class="sprite-comment-icon-open-conversations"></i>
                                                        <span>查看对话</span>
                                                    </button>
                                                </div>
                                                <div class="_commentItem-content">比如只有服务器上才有GPU的情况……</div>
                                                <div class="_commentItem-footer">
                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                    <time>21 小时前</time>
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
                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">纳泥</a></div>
                                                <div class="_commentItem-content">你得在服务器上打包，发布</div>
                                                <div class="_commentItem-footer">
                                                    <span class="_commentItem-links"><span>1</span><span>赞</span></span>
                                                    <time>21 小时前</time>
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
                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">西利西利</a></div>
                                                <div class="_commentItem-content">很实用。尤其是看diff，图形界面比命令行方便得不止一点点</div>
                                                <div class="_commentItem-footer">
                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                    <time>21 小时前</time>
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
                                            <a href="javascript:;" class="zg-right zg-btn-blue">评论</a>
                                            <a href="javascript:;" class="zm-comment-cancel">关闭</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="zm-item-answer zm-item-expanded">
                        <div class="zm-votebar">
                            <button class="up pressed" title="赞同">
                                <i class="icon vote-arrow"></i>
                                <span class="count">78</span>
                            </button>
                            <button class="down" title="反对，不会显示您的姓名">
                                <i class="icon vote-arrow"></i>
                            </button>
                        </div>
                        <div class="answer-head">
                            <div class="zm-item-answer-author-info">
                                <a class="zm-item-link-avatar">
                                    <img src="img/people-3_s.jpg" class="Avatar">
                                </a>
                                <span class="summary-wrapper">
                                    <span class="author-link-line">
                                        <a class="author-link" href="/people/woshixiaosongshu">Cat Chen</a>
                                        <span class="icon icon-badge-best-answer icon-badge"></span>
                                    </span>
                                    <span class="badge-summary">
                                        <a href="/people/catchen">程序员等&nbsp;3&nbsp;个话题优秀回答者</a>
                                    </span>
                                    <span title="Materials Science, PhD" class="bio">上知乎，求欢乐</span>
                                </span>
                            </div>
                            <div class="zm-item-vote-info">
                                <span class="voters text">
                                    <a href="#" class="more text">
                                        <span class="js-voteCount">78</span>&nbsp;个赞同
                                    </a>
                                </span>
                            </div>
                        </div>
                        <div class="zm-item-rich-text expandable">
                            <div class="zh-summary clearFix" style="display: none;"></div>
                            <div class="zm-editable-content clearFix">
                                如果是最最常见的操作，例如 status、diff 和 commit，GUI 肯定可以做得很方便。如果是常见操作，例如 checkout、rebase，GUI 也肯定要支持。但更复杂的操作就不一定有了，就算有也不知道放在哪了。
                                <br>
                                <br>例如你不小心 amend 了错误的 commit，想要回到之前的 commit 并把改动 reset 出来，你该怎么办呢？你可以去搜索，然后 StackOverflow 会给你一个 CLI 的答案。没人会给你 GUI 答案的，因为 GUI 各不一样，大家无法沟通。这最终就是个沟通的问题，如果世界上 80% 的人用同一个 GUI，各种问题都好解决。就你用 GUI，你遇到问题了就自己解决吧。
                                <br>
                                <br>此次还有 scripting 的问题。CLI 可以用在更复杂的 script 里面提高自动化，GUI 很难。
                            </div>
                        </div>
                        <div class="zm-item-meta answer-action">
                            <div class="zm-meta-panel">
                                <a class="answer-date-link meta-item">编辑于 01:33</a>
                                <a href="javascript:;" class="toggle-comment meta-item" num="4"><i class="z-icon-comment"></i>4&nbsp;条评论</a>
                                <a href="#" class="js-thank zu-autoHide meta-item"><i class="z-icon-thank"></i>感谢</a>
                                <a href="#" class="js-share zu-autoHide meta-item"><i class="z-icon-share"></i>分享</a>
                                <a href="#" class="js-collect zu-autoHide meta-item"><i class="z-icon-collect"></i>收藏</a>
                                <span class="zg-bull zu-autoHide">•</span>
                                <a href="#" class="js-noHelp zu-autoHide meta-item">没有帮助</a>
                                <span class="zg-bull zu-autoHide">•</span>
                                <a href="#" class="js-report zu-autoHide meta-item">举报</a>
                                <span class="zg-bull">•</span>
                                <a href="#" class="js-report meta-item">作者保留权利</a>
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
                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">Gee Law</a></div>
                                                <div class="_commentItem-content">……为什么要在服务器上写</div>
                                                <div class="_commentItem-footer">
                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                    <time>22 小时前</time>
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
                                                <div class="_commentItem-header">
                                                    <a href="http://www.zhihu.com/people/xiaohu">何钦尧</a>
                                                    <span><span>（作者） 回复</span><a href="http://www.zhihu.com/people/davidz">Gee Law</a></span>
                                                    <button class="_commentItem-openConversations _commentBox-textBtn">
                                                        <i class="sprite-comment-icon-open-conversations"></i>
                                                        <span>查看对话</span>
                                                    </button>
                                                </div>
                                                <div class="_commentItem-content">比如只有服务器上才有GPU的情况……</div>
                                                <div class="_commentItem-footer">
                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                    <time>21 小时前</time>
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
                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">纳泥</a></div>
                                                <div class="_commentItem-content">你得在服务器上打包，发布</div>
                                                <div class="_commentItem-footer">
                                                    <span class="_commentItem-links"><span>1</span><span>赞</span></span>
                                                    <time>21 小时前</time>
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
                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">西利西利</a></div>
                                                <div class="_commentItem-content">很实用。尤其是看diff，图形界面比命令行方便得不止一点点</div>
                                                <div class="_commentItem-footer">
                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                    <time>21 小时前</time>
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
                                            <a href="javascript:;" class="zg-right zg-btn-blue">评论</a>
                                            <a href="javascript:;" class="zm-comment-cancel">关闭</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="zm-item-answer zm-item-expanded">
                        <div class="zm-votebar">
                            <button class="up" title="赞同">
                                <i class="icon vote-arrow"></i>
                                <span class="count">79</span>
                            </button>
                            <button class="down" title="反对，不会显示您的姓名">
                                <i class="icon vote-arrow"></i>
                            </button>
                        </div>
                        <div class="answer-head">
                            <div class="zm-item-answer-author-info">
                                <a class="zm-item-link-avatar">
                                    <img src="img/people-3_s.jpg" class="Avatar">
                                </a>
                                <span class="summary-wrapper">
                                    <span class="author-link-line">
                                        <a class="author-link" href="/people/woshixiaosongshu">Moil Yip</a>
                                        <span class="icon icon-badge-best-answer icon-badge"></span>
                                    </span>
                                    <span class="badge-summary">
                                        <a href="/people/catchen">编程等&nbsp;6&nbsp;个话题优秀回答者</a>
                                    </span>
                                    <span title="Materials Science, PhD" class="bio">游戏程序员，《游戏引擎架构》译者</span>
                                </span>
                            </div>
                            <div class="zm-item-vote-info">
                                <span class="voters text">
                                    <span class="user-block">
                                        <a href="https://www.zhihu.com/people/minmin">叛逆者</a>
                                    </span>

                                    <a href="#" class="more text">等&nbsp;
                                        <span class="js-voteCount">79</span>&nbsp;个赞同
                                    </a>
                                </span>
                            </div>
                        </div>
                        <div class="zm-item-rich-text expandable">
                            <div class="zh-summary clearFix" style="display: none;"></div>
                            <div class="zm-editable-content clearFix">GitHub Desktop是很好用的，日常用來 commit 看 log/diff 远比 CLI 方便。但有些功能暂时都要靠 CLI，例如 submodule、tag、cherry-pick 等。维护 build 脚本时也需要 CLI。
                                <br>最好 GUI/CLI 都懂，到操作的时候哪个方便用哪个。
                            </div>
                        </div>
                        <div class="zm-item-meta answer-action">
                            <div class="zm-meta-panel">
                                <a class="answer-date-link meta-item">编辑于 01:33</a>
                                <a href="javascript:;" class="toggle-comment meta-item" num="4"><i class="z-icon-comment"></i>4&nbsp;条评论</a>
                                <a href="#" class="js-thank zu-autoHide meta-item"><i class="z-icon-thank"></i>感谢</a>
                                <a href="#" class="js-share zu-autoHide meta-item"><i class="z-icon-share"></i>分享</a>
                                <a href="#" class="js-collect zu-autoHide meta-item"><i class="z-icon-collect"></i>收藏</a>
                                <span class="zg-bull zu-autoHide">•</span>
                                <a href="#" class="js-noHelp zu-autoHide meta-item">没有帮助</a>
                                <span class="zg-bull zu-autoHide">•</span>
                                <a href="#" class="js-report zu-autoHide meta-item">举报</a>
                                <span class="zg-bull">•</span>
                                <a href="#" class="js-report meta-item">作者保留权利</a>
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
                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">Gee Law</a></div>
                                                <div class="_commentItem-content">……为什么要在服务器上写</div>
                                                <div class="_commentItem-footer">
                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                    <time>22 小时前</time>
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
                                                <div class="_commentItem-header">
                                                    <a href="http://www.zhihu.com/people/xiaohu">何钦尧</a>
                                                    <span><span>（作者） 回复</span><a href="http://www.zhihu.com/people/davidz">Gee Law</a></span>
                                                    <button class="_commentItem-openConversations _commentBox-textBtn">
                                                        <i class="sprite-comment-icon-open-conversations"></i>
                                                        <span>查看对话</span>
                                                    </button>
                                                </div>
                                                <div class="_commentItem-content">比如只有服务器上才有GPU的情况……</div>
                                                <div class="_commentItem-footer">
                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                    <time>21 小时前</time>
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
                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">纳泥</a></div>
                                                <div class="_commentItem-content">你得在服务器上打包，发布</div>
                                                <div class="_commentItem-footer">
                                                    <span class="_commentItem-links"><span>1</span><span>赞</span></span>
                                                    <time>21 小时前</time>
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
                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">西利西利</a></div>
                                                <div class="_commentItem-content">很实用。尤其是看diff，图形界面比命令行方便得不止一点点</div>
                                                <div class="_commentItem-footer">
                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                    <time>21 小时前</time>
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
                                            <a href="javascript:;" class="zg-right zg-btn-blue">评论</a>
                                            <a href="javascript:;" class="zm-comment-cancel">关闭</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="zm-item-answer zm-item-expanded">
                        <div class="zm-votebar">
                            <button class="up" title="赞同">
                                <i class="icon vote-arrow"></i>
                                <span class="count">27</span>
                            </button>
                            <button class="down" title="反对，不会显示您的姓名">
                                <i class="icon vote-arrow"></i>
                            </button>
                        </div>
                        <div class="answer-head">
                            <div class="zm-item-answer-author-info">
                                <a class="zm-item-link-avatar">
                                    <img src="img/people-3_s.jpg" class="Avatar">
                                </a>
                                <span class="summary-wrapper">
                                    <span class="author-link-line">
                                        <a class="author-link" href="/people/woshixiaosongshu">廖雪峰</a>
                                    </span>
                                    <span title="Materials Science, PhD" class="bio">业余马拉松选手</span>
                                </span>
                            </div>
                            <div class="zm-item-vote-info">
                                <span class="voters text">
                                    <span class="user-block">
                                        <a href="https://www.zhihu.com/people/minmin">叛逆者</a>
                                    </span>
                                    <a href="#" class="more text">等&nbsp;
                                        <span class="js-voteCount">27</span>&nbsp;个赞同
                                    </a>
                                </span>
                            </div>
                        </div>
                        <div class="zm-item-rich-text expandable">
                            <div class="zh-summary clearFix" style="display: none;"></div>
                            <div class="zm-editable-content clearFix">GitHub Desktop是很好用的，日常用來 commit 看 log/diff 远比 CLI 方便。但有些功能暂时都要靠 CLI，例如 submodule、tag、cherry-pick 等。维护 build 脚本时也需要 CLI。
                                <br>最好 GUI/CLI 都懂，到操作的时候哪个方便用哪个。
                            </div>
                        </div>
                        <div class="zm-item-meta answer-action">
                            <div class="zm-meta-panel">
                                <a class="answer-date-link meta-item">编辑于 01:33</a>
                                <a href="javascript:;" class="toggle-comment meta-item" num="4"><i class="z-icon-comment"></i>7&nbsp;条评论</a>
                                <a href="#" class="js-thank zu-autoHide meta-item"><i class="z-icon-thank"></i>感谢</a>
                                <a href="#" class="js-share zu-autoHide meta-item"><i class="z-icon-share"></i>分享</a>
                                <a href="#" class="js-collect zu-autoHide meta-item"><i class="z-icon-collect"></i>收藏</a>
                                <span class="zg-bull zu-autoHide">•</span>
                                <a href="#" class="js-noHelp zu-autoHide meta-item">没有帮助</a>
                                <span class="zg-bull zu-autoHide">•</span>
                                <a href="#" class="js-report zu-autoHide meta-item">举报</a>
                                <span class="zg-bull">•</span>
                                <a href="#" class="js-report meta-item">作者保留权利</a>
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
                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">Gee Law</a></div>
                                                <div class="_commentItem-content">……为什么要在服务器上写</div>
                                                <div class="_commentItem-footer">
                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                    <time>22 小时前</time>
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
                                                <div class="_commentItem-header">
                                                    <a href="http://www.zhihu.com/people/xiaohu">何钦尧</a>
                                                    <span><span>（作者） 回复</span><a href="http://www.zhihu.com/people/davidz">Gee Law</a></span>
                                                    <button class="_commentItem-openConversations _commentBox-textBtn">
                                                        <i class="sprite-comment-icon-open-conversations"></i>
                                                        <span>查看对话</span>
                                                    </button>
                                                </div>
                                                <div class="_commentItem-content">比如只有服务器上才有GPU的情况……</div>
                                                <div class="_commentItem-footer">
                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                    <time>21 小时前</time>
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
                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">纳泥</a></div>
                                                <div class="_commentItem-content">你得在服务器上打包，发布</div>
                                                <div class="_commentItem-footer">
                                                    <span class="_commentItem-links"><span>1</span><span>赞</span></span>
                                                    <time>21 小时前</time>
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
                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">西利西利</a></div>
                                                <div class="_commentItem-content">很实用。尤其是看diff，图形界面比命令行方便得不止一点点</div>
                                                <div class="_commentItem-footer">
                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                    <time>21 小时前</time>
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
                                            <a href="javascript:;" class="zg-right zg-btn-blue">评论</a>
                                            <a href="javascript:;" class="zm-comment-cancel">关闭</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="zm-item-answer zm-item-expanded">
                        <div class="zm-votebar">
                            <button class="up" title="赞同">
                                <i class="icon vote-arrow"></i>
                                <span class="count">35</span>
                            </button>
                            <button class="down" title="反对，不会显示您的姓名">
                                <i class="icon vote-arrow"></i>
                            </button>
                        </div>
                        <div class="answer-head">
                            <div class="zm-item-answer-author-info">
                                <a class="zm-item-link-avatar">
                                    <img src="img/people-3_s.jpg" class="Avatar">
                                </a>
                                <span class="summary-wrapper">
                                    <span class="author-link-line">
                                        <a class="author-link" href="/people/woshixiaosongshu">Alvin Qi</a>
                                    </span>

                                    <span title="Materials Science, PhD" class="bio">INTJ，喜欢Big Clean Problem，EGOIST脑…</span>
                                </span>
                            </div>
                            <div class="zm-item-vote-info">
                                <span class="voters text">
                                    <span class="user-block">
                                        <a href="https://www.zhihu.com/people/minmin">叛逆者</a>
                                    </span>
                                    <a href="#" class="more text">等&nbsp;
                                        <span class="js-voteCount">35</span>&nbsp;个赞同
                                    </a>
                                </span>
                            </div>
                        </div>
                        <div class="zm-item-rich-text expandable">
                            <div class="zh-summary clearFix" style="display: none;"></div>
                            <div class="zm-editable-content clearFix">也不是说多么高贵。
                                <br><br>面试官的问题在于，心有点窄。
                                <br><br>Git GUI能完成不少日常操作，这并不是说Git GUI和Git CLI在功能上是等价的。通常Git GUI的功能只是Git CLI的真子集，而且想玩转一些关于Git的黑科技还是要靠命令行。
                                <br><br>但Git GUI真正的问题不在于low，而在于难用。这不仅体现在Git GUI的多样化方面，还体现在Git GUI本身。Git的图形客户端有Tortoist、gitg、SourceTree、Github Desktop等。这种多样性本身就是问题，它们都不能达到“在任何场景下方便操作”的程度。尽管其中SourceTree算是尚好，至少看代码方便，但不论是哪个客户端，想执行一些稍微高级点的操作都要点开层层菜单才能找到相应的按钮，更不用说这些客户端视图布局不一致，你根本不知道功能藏在哪。
                                <br><br>而实际上，Git GUI的问题不在于放按钮式的用户交互不友好，而在于i18n问题。也不知道是不是我语死早，鬼知道“变基”是rebase的意思！所以对于大部分中国的程序员，只用Git GUI是根本用不明白的。
                                <br><br>上述问题，在命令行中根本不是问题。嫌命令行复杂的话，写alias啊。不会用的话，就承认不会用，被说low就觉得委屈了？不会就是不会，你去学就是了。反正我从来没见过纯Git GUI用户比命令行用户对Git有更深入的了解。
                                <br><br>Git从一开始就是命令行工具，后来才衍生出多个图形界面工具，但如上所述，
                                <b>Git命令行是经得起历史考验的，而Git图形界面工具还在被考验、还在打磨</b>.
                                <br><br>但，题主我知道你觉得自己委屈，感觉自己被鄙视了一脸。你当时应该反杀，你应该告诉面试官，用Git GUI照样可以完美执行开发工作流，跟面试官讲讲Git里的缓冲区、指针、锁、本地服务器同步的原理究竟是怎样的，也告诉面试官Git中的场景弊端、性能瓶颈是怎样的，最后再分析一下之前某个版本（我记得是2.6.4）中远程任意执行漏洞的具体细节。
                                <br><br>别委屈了，你现在就跟他讲这些，你立刻就能翻盘。题主加油！
                            </div>
                        </div>
                        <div class="zm-item-meta answer-action">
                            <div class="zm-meta-panel">
                                <a class="answer-date-link meta-item">编辑于 01:33</a>
                                <a href="javascript:;" class="toggle-comment meta-item" num="4"><i class="z-icon-comment"></i>7&nbsp;条评论</a>
                                <a href="#" class="js-thank zu-autoHide meta-item"><i class="z-icon-thank"></i>感谢</a>
                                <a href="#" class="js-share zu-autoHide meta-item"><i class="z-icon-share"></i>分享</a>
                                <a href="#" class="js-collect zu-autoHide meta-item"><i class="z-icon-collect"></i>收藏</a>
                                <span class="zg-bull zu-autoHide">•</span>
                                <a href="#" class="js-noHelp zu-autoHide meta-item">没有帮助</a>
                                <span class="zg-bull zu-autoHide">•</span>
                                <a href="#" class="js-report zu-autoHide meta-item">举报</a>
                                <span class="zg-bull">•</span>
                                <a href="#" class="js-report meta-item">作者保留权利</a>
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
                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">Gee Law</a></div>
                                                <div class="_commentItem-content">……为什么要在服务器上写</div>
                                                <div class="_commentItem-footer">
                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                    <time>22 小时前</time>
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
                                                <div class="_commentItem-header">
                                                    <a href="http://www.zhihu.com/people/xiaohu">何钦尧</a>
                                                    <span><span>（作者） 回复</span><a href="http://www.zhihu.com/people/davidz">Gee Law</a></span>
                                                    <button class="_commentItem-openConversations _commentBox-textBtn">
                                                        <i class="sprite-comment-icon-open-conversations"></i>
                                                        <span>查看对话</span>
                                                    </button>
                                                </div>
                                                <div class="_commentItem-content">比如只有服务器上才有GPU的情况……</div>
                                                <div class="_commentItem-footer">
                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                    <time>21 小时前</time>
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
                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">纳泥</a></div>
                                                <div class="_commentItem-content">你得在服务器上打包，发布</div>
                                                <div class="_commentItem-footer">
                                                    <span class="_commentItem-links"><span>1</span><span>赞</span></span>
                                                    <time>21 小时前</time>
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
                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">西利西利</a></div>
                                                <div class="_commentItem-content">很实用。尤其是看diff，图形界面比命令行方便得不止一点点</div>
                                                <div class="_commentItem-footer">
                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                    <time>21 小时前</time>
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
                                            <a href="javascript:;" class="zg-right zg-btn-blue">评论</a>
                                            <a href="javascript:;" class="zm-comment-cancel">关闭</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a class="zg-btn-white zu-button-more">更多</a>
                <div id="zh-question-collapsed-link" class="zu-question-collap-title">
                    <a href="javascript:;" name="collap" class="zh-link-gray" id="zh-question-collapsed-switcher">
                        <span id="zh-question-collapsed-num">1</span>个答案被折叠
                    </a>(
                    <a target="_blank" href="/question/20120168" class="zh-link-gray">为什么？</a> )
                </div>
                <div id="zh-question-collapsed-wrap" class="zh-question-answer-wrapper hidden">
                    <div class="zm-item-answer zm-item-expanded">
                        <div class="zm-votebar">
                            <button class="up" title="赞同">
                                <i class="icon vote-arrow"></i>
                                <span class="count">2</span>
                            </button>
                            <button class="down pressed" title="反对，不会显示您的姓名">
                                <i class="icon vote-arrow"></i>
                            </button>
                        </div>
                        <div class="answer-head">
                            <div class="zm-item-answer-author-info">
                                <a class="zm-item-link-avatar">
                                    <img src="img/people-3_s.jpg" class="Avatar">
                                </a>
                                <span class="summary-wrapper">
                                    <span class="author-link-line">
                                        <a class="author-link" href="/people/woshixiaosongshu">九爷</a>
                                    </span>
                                    <span title="Materials Science, PhD" class="bio">别做篓子里的螃蟹</span>
                                </span>
                            </div>
                            <div class="zm-item-vote-info">
                                <span class="voters text">
                                    <a href="#" class="more text">
                                        <span class="js-voteCount">2</span>&nbsp;个赞同
                                    </a>
                                </span>
                            </div>
                        </div>
                        <div class="zm-item-rich-text expandable">
                            <div class="zh-summary clearFix" style="display: none;"></div>
                            <div class="zm-editable-content clearFix">用命令行不一定高贵，但不会用命令行最起码证明这个应聘者只是一个码农，而不是具备主动探索心理的开发者。</div>
                        </div>
                        <div class="zm-item-meta answer-action">
                            <div class="zm-meta-panel">
                                <a class="answer-date-link meta-item">编辑于 昨天 23:49</a>
                                <a href="javascript:;" class="toggle-comment meta-item" num="4"><i class="z-icon-comment"></i>4&nbsp;条评论</a>
                                <a href="#" class="js-thank zu-autoHide meta-item"><i class="z-icon-thank"></i>感谢</a>
                                <a href="#" class="js-share zu-autoHide meta-item"><i class="z-icon-share"></i>分享</a>
                                <a href="#" class="js-collect zu-autoHide meta-item"><i class="z-icon-collect"></i>收藏</a>
                                <span class="zg-bull zu-autoHide">•</span>
                                <a href="#" class="js-noHelp zu-autoHide meta-item">没有帮助</a>
                                <span class="zg-bull zu-autoHide">•</span>
                                <a href="#" class="js-report zu-autoHide meta-item">举报</a>
                                <span class="zg-bull">•</span>
                                <a href="#" class="js-report meta-item">作者保留权利</a>
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
                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">Gee Law</a></div>
                                                <div class="_commentItem-content">……为什么要在服务器上写</div>
                                                <div class="_commentItem-footer">
                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                    <time>22 小时前</time>
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
                                                <div class="_commentItem-header">
                                                    <a href="http://www.zhihu.com/people/xiaohu">何钦尧</a>
                                                    <span><span>（作者） 回复</span><a href="http://www.zhihu.com/people/davidz">Gee Law</a></span>
                                                    <button class="_commentItem-openConversations _commentBox-textBtn">
                                                        <i class="sprite-comment-icon-open-conversations"></i>
                                                        <span>查看对话</span>
                                                    </button>
                                                </div>
                                                <div class="_commentItem-content">比如只有服务器上才有GPU的情况……</div>
                                                <div class="_commentItem-footer">
                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                    <time>21 小时前</time>
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
                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">纳泥</a></div>
                                                <div class="_commentItem-content">你得在服务器上打包，发布</div>
                                                <div class="_commentItem-footer">
                                                    <span class="_commentItem-links"><span>1</span><span>赞</span></span>
                                                    <time>21 小时前</time>
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
                                                <div class="_commentItem-header"><a href="http://www.zhihu.com/people/xiaohu">西利西利</a></div>
                                                <div class="_commentItem-content">很实用。尤其是看diff，图形界面比命令行方便得不止一点点</div>
                                                <div class="_commentItem-footer">
                                                    <span class="_commentItem-links hidden"><span>0</span><span>赞</span></span>
                                                    <time>21 小时前</time>
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
                                            <a href="javascript:;" class="zg-right zg-btn-blue">评论</a>
                                            <a href="javascript:;" class="zm-comment-cancel">关闭</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="zh-question-answer-form-wrap" class="zh-question-answer-form-wrap">
                    <div class="zm-editable-editor-wrap">
                        <div class="zm-answer-form">
                            <a href="/people/jiang-chen-guang" class="zm-item-link-avatar"><img src="img/profile_s.jpg"></a>
                            <div>
                                <div class="zu-answer-form-title">
                                    <a href="/people/jiang-chen-guang">蒋晨光</a>
                                    <span>
                                        <a name="edit-bio" class="zu-edit-button" href="#">
                                            <i class="zu-edit-button-icon"></i>填写话题经验，提升回答可信度
                                        </a>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="zm-editable-editor-outer">
                            <div class="zm-editable-toolbar-container">
                                <div class="goog-toolbar">
                                    <div class="goog-inline-block goog-toolbar-button " id="toggleFullScreen" title="写作模式" role="button">
                                        <div class="goog-inline-block goog-toolbar-button-outer-box">
                                            <div class="goog-inline-block goog-toolbar-button-inner-box">
                                                <div class="tr-icon tr-max"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="goog-inline-block goog-toolbar-button" id="+Bold" title="粗体" role="button">
                                        <div class="goog-inline-block goog-toolbar-button-outer-box">
                                            <div class="goog-inline-block goog-toolbar-button-inner-box">
                                                <div class="tr-icon tr-bold"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="goog-inline-block goog-toolbar-button" id="italic" title="斜体" role="button">
                                        <div class="goog-inline-block goog-toolbar-button-outer-box">
                                            <div class="goog-inline-block goog-toolbar-button-inner-box">
                                                <div class="tr-icon tr-italic"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="goog-inline-block goog-toolbar-button" id="underline" title="下划线" role="button">
                                        <div class="goog-inline-block goog-toolbar-button-outer-box">
                                            <div class="goog-inline-block goog-toolbar-button-inner-box">
                                                <div class="tr-icon tr-underline"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="goog-toolbar-separator goog-inline-block">&nbsp;</div>
                                    <div class="goog-inline-block goog-toolbar-button" id="quote" title="引用" role="button">
                                        <div class="goog-inline-block goog-toolbar-button-outer-box">
                                            <div class="goog-inline-block goog-toolbar-button-inner-box">
                                                <div class="tr-icon tr-quote"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="goog-inline-block goog-toolbar-button" id="code" title="代码" role="button">
                                        <div class="goog-inline-block goog-toolbar-button-outer-box">
                                            <div class="goog-inline-block goog-toolbar-button-inner-box">
                                                <div class="tr-icon tr-code"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="goog-inline-block goog-toolbar-button" id="orderedList" title="有序列表" role="button">
                                        <div class="goog-inline-block goog-toolbar-button-outer-box">
                                            <div class="goog-inline-block goog-toolbar-button-inner-box">
                                                <div class="tr-icon tr-orderedList"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="goog-inline-block goog-toolbar-button" id="unorderedList" title="无序列表" role="button">
                                        <div class="goog-inline-block goog-toolbar-button-outer-box">
                                            <div class="goog-inline-block goog-toolbar-button-inner-box">
                                                <div class="tr-icon tr-unorderedList"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="goog-inline-block goog-toolbar-button" id="equation" title="公式" role="button">
                                        <div class="goog-inline-block goog-toolbar-button-outer-box">
                                            <div class="goog-inline-block goog-toolbar-button-inner-box">
                                                <div class="tr-icon tr-equation"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="goog-toolbar-separator goog-inline-block">&nbsp;</div>
                                    <div class="goog-inline-block goog-toolbar-button" id="image" title="插入图片" role="button">
                                        <div class="goog-inline-block goog-toolbar-button-outer-box">
                                            <div class="goog-inline-block goog-toolbar-button-inner-box">
                                                <div class="tr-icon tr-image"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="goog-inline-block goog-toolbar-button" id="video" title="插入视频" role="button">
                                        <div class="goog-inline-block goog-toolbar-button-outer-box">
                                            <div class="goog-inline-block goog-toolbar-button-inner-box">
                                                <div class="tr-icon tr-video"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="goog-toolbar-separator goog-inline-block">&nbsp;</div>
                                    <div class="goog-inline-block goog-toolbar-button" id="removeFormat" title="清楚格式" role="button">
                                        <div class="goog-inline-block goog-toolbar-button-outer-box">
                                            <div class="goog-inline-block goog-toolbar-button-inner-box">
                                                <div class="tr-icon tr-clearFormat"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="zm-editable-editor-field-wrap">
                                <div id="mock" class="zm-editable-editor-field-element editable" contenteditable="true">
                                </div>
                            </div>
                        </div>
                        <div class="zm-command">
                            <label class="zg-left anno-box">
                                <input type="checkbox">匿名
                                <span>&nbsp;</span>
                            </label>
                            <label class="zg-left copyright-box">
                                <select name="copyright">
                                    <option value="1">允许规范转载</option>
                                    <option value="1">允许付费转载</option>
                                    <option value="1">禁止转载</option>
                                </select>
                            </label>
                            <span class="zg-right">
                                <a class="submit-button zg-btn-blue" href="javascript:;">发布回答</a>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="zu-main-sidebar">
            <div class="zm-side-section">
                <div class="zm-side-section-inner">
                    <button class="follow-button zg-follow zg-btn-blue">关注问题</button>
                    <div class="zh-question-followers-sidebar">
                        <div class="zg-gray-normal">
                            <a href="/question/0001/followers"><strong>762</strong></a>
                            人关注该话题
                        </div>
                        <div class="list zu-small-avatar-list zg-clear">
                            <a class="zm-item-link-avatar">
                                <img src="img/people-3_s.jpg">
                            </a>
                            <a class="zm-item-link-avatar">
                                <img src="img/people-4_s.jpg">
                            </a>
                            <a class="zm-item-link-avatar">
                                <img src="img/people-3_s.jpg">
                            </a>
                            <a class="zm-item-link-avatar">
                                <img src="img/people-4_s.jpg">
                            </a>
                            <a class="zm-item-link-avatar">
                                <img src="img/people-3_s.jpg">
                            </a>
                            <a class="zm-item-link-avatar">
                                <img src="img/people-4_s.jpg">
                            </a>
                            <a class="zm-item-link-avatar">
                                <img src="img/people-3_s.jpg">
                            </a>
                            <a class="zm-item-link-avatar">
                                <img src="img/people-4_s.jpg">
                            </a>
                            <a class="zm-item-link-avatar">
                                <img src="img/people-3_s.jpg">
                            </a>
                            <a class="zm-item-link-avatar">
                                <img src="img/people-4_s.jpg">
                            </a>
                            <a class="zm-item-link-avatar">
                                <img src="img/people-3_s.jpg">
                            </a>
                            <a class="zm-item-link-avatar">
                                <img src="img/people-4_s.jpg">
                            </a>
                            <a class="zm-item-link-avatar">
                                <img src="img/people-3_s.jpg">
                            </a>
                            <a class="zm-item-link-avatar">
                                <img src="img/people-4_s.jpg">
                            </a>
                            <a class="zm-item-link-avatar">
                                <img src="img/people-3_s.jpg">
                            </a>
                            <a class="zm-item-link-avatar">
                                <img src="img/people-4_s.jpg">
                            </a>
                            <a class="zm-item-link-avatar">
                                <img src="img/people-3_s.jpg">
                            </a>
                            <a class="zm-item-link-avatar">
                                <img src="img/people-4_s.jpg">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="zm-side-section">
                <div class="zm-side-section-inner">
                    <h3>问题状态</h3>
                    <div class="zg-gray-normal">
                        最近活动于
                        <span class="time">2016--9-8</span>
                        <span class="time">•</span>
                        <a href="/question/0001/log">查看问题日志</a>
                    </div>
                    <div class="zg-gray-normal">
                        被浏览
                        <strong>59986</strong>
                        次，相关话题关注者
                        <strong>398902</strong>
                        人
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="zh-footer" class="zh-footer">
        <div class="content zg-warp">
            <ul>
                <li><a href="javascript:;">刘看山</a></li>
                <li><a href="javascript:;">知乎指南</a></li>
                <li><a href="javascript:;">建议反馈</a></li>
                <li><a href="javascript:;">移动应用</a></li>
                <li><a href="javascript:;">加入知乎</a></li>
                <li><a href="javascript:;">知乎协议</a></li>
                <li><a href="javascript:;">联系我们</a></li>
            </ul>
            <span class="copy">© 2016 知乎</span>
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