/**
 * Created by morning on 2016/9/2.
 */
// 支持，反对
$('.zm-votebar').each(function () {
    // 支持
    $(this).children('button:first').click(function () {
        var upClass = $(this).attr('class');
        var downClass = $(this).next().attr('class');
        var num = $(this).children('span').text();
        if(upClass.indexOf('pressed') >= 0)
        {
            $(this).removeClass('pressed');
            $(this).children('span').text(parseInt(num) - 1);
        }
        else{
            $(this).addClass('pressed');
            $(this).children('span').text(parseInt(num) + 1);
        }

        if(downClass.indexOf('pressed') >= 0)
        {
            $(this).next().removeClass('pressed');
        }
    })

    // 反对
    $(this).children('button:last').click(function () {
        var downClass = $(this).attr('class');
        var upClass = $(this).prev().attr('class');
        var num = $(this).prev().children('span').text();
        if(downClass.indexOf('pressed') >= 0)
        {
            $(this).removeClass('pressed');
        }
        else{
            $(this).addClass('pressed');
        }

        if(upClass.indexOf('pressed') >= 0)
        {
            $(this).prev().removeClass('pressed');
            $(this).prev().children('span').text(parseInt(num) - 1);
        }
    })
})

// 赞，取消赞
$('._commentItem-footer').each(function () {
    $(this).children('button').eq(1).click(function () {
        val = $(this).parent().children('._commentItem-links').children('span:first').text();
        if($(this).children('span:first').html() == "赞"){
            $(this).children('span:first').html("取消赞");
            $(this).parent().children('._commentItem-links').children('span:first').text(parseInt(val) + 1);
        }
        else{
            $(this).children('span').html("赞")
            $(this).parent().children('._commentItem-links').children('span:first').text(parseInt(val) - 1);
        }
    })
})
// 展开正文
$('.zh-summary').each(function () {
    $(this).click(function () {
        $(this).css('display', 'none');
        $(this).prev().css('display', 'block');
        $(this).parent().parent().parent().addClass('zm-item-expanded');
    })
})
// 收起正文
$('.item-collapse').each(function () {
    $(this).click(function () {
        $(this).parent().parent().prev().children().eq(0).css('display', 'none');
        $(this).parent().parent().prev().children().eq(1).css('display', 'block');
        $(this).parent().parent().parent().parent().removeClass('zm-item-expanded');
    })
})

// panel固定
function oneNode() {
    this.feedID = '';           // feedID
    this.collapseFixed = false;     // 收起按钮是否固定
    this.upDownFixed = false;       // 支持反对是否固定
    this.ifPanelFixed = false;      // 评论栏是否固定
}
var lstNode = document.getElementsByClassName('feed-item');
function PanelLst() {
    this.list = new Array();
}
PanelLst.prototype = {
    find: function (id) {
        for(var loop = 0; loop < this.list.length; loop++){
            if(this.list[loop].feedID == id){
                return this.list[loop];
            }
        }
    },
    addNode: function (feedID) {
        var node = new oneNode();
        node.feedID = feedID;
        node.ifPanelFixed = false;
        node.upDownFixed = false;
        node.collapseFixed = false;
        this.list.push(node);
    },
    show: function () {
        for(var loop = 0; loop < this.list.length; loop++){
            console.log(this.list[loop].feedID);
        }
    }
}
var PanelLstInst = new PanelLst();
for(loop = 0; loop <lstNode.length; loop++){
    PanelLstInst.addNode(lstNode[loop].id);
}
window.addEventListener('scroll', function () {
    $('.zm-item-meta .zm-meta-panel.focusIn').each(function () {
        var id = $(this).parent().parent().parent().parent().parent().attr('id');
        var nodePanel = PanelLstInst.find(id);

        var panelTop = this.getBoundingClientRect().top;
        var left = this.getBoundingClientRect().left;
        var commentListBottom = $(this).next().children('._commentBox-bordered-3Fo').children('._commentBox-list')[0].getBoundingClientRect().bottom;
        if(panelTop < 0 && commentListBottom > 0 && !nodePanel.ifPanelFixed){
            nodePanel.ifPanelFixed = true;
            var node = this.cloneNode(true);
            var thisNode = this;
            node.onclick = function () {
                var num = parseInt($(thisNode).children('.toggle-comment').attr('num'));
                $(thisNode).children('.toggle-comment').html("<i class='z-icon-comment'></i>" + num + " 条评论");
                $(thisNode).next().css('display', 'none');
                $(thisNode).removeClass('focusIn');
                document.body.removeChild(document.body.lastChild);
            }
            document.querySelector('body').appendChild(node);
            $('body>div:last-child').addClass('scroll-floater').css('position', 'fixed').css('left', left).css('top', '44px').css('width', '584px');
        }
        else if((panelTop > 0 && nodePanel.ifPanelFixed)
            || (commentListBottom < 0 && nodePanel.ifPanelFixed)){
            nodePanel.ifPanelFixed = false;
            document.body.removeChild(document.body.lastChild);
        }
    })

    // 支持，反对
    $('.zm-item-expanded .zm-votebar').each(function () {
        var id = $(this).parent().parent().parent().parent().attr('id');
        var nodePanel = PanelLstInst.find(id);
        var contentTop = $(this).next().next().children(':first')[0].getBoundingClientRect().top;
        var contentBottom = $(this).next().next().children(':first')[0].getBoundingClientRect().bottom;
        if(contentTop < -10 && contentBottom > 150 && !nodePanel.upDownFixed){
            nodePanel.upDownFixed = true;
            $(this).addClass('scroll-floater').css('position', 'fixed').css('top', '60px');
        }
        else if((contentTop > -10 || contentBottom < 30)
            && nodePanel.upDownFixed){
            nodePanel.upDownFixed = false;
            $(this).removeClass('scroll-floater').attr('style', '');
        }
    })

    // 收起按钮
    $('.zm-item-expanded .feed-meta').each(function () {
        var id = $(this).parent().parent().parent().attr('id');
        var nodePanel = PanelLstInst.find(id);
        var panelBottom = $(this).children('.zm-item-meta').children('.zm-meta-panel')[0].getBoundingClientRect().bottom;
        var contentTop = $(this).prev()[0].getBoundingClientRect().top;
        var windowHeight = window.innerHeight;
        var left = $(this).children().children().children('button')[0].getBoundingClientRect().left;

        if(panelBottom > windowHeight && contentTop < windowHeight && !nodePanel.collapseFixed){
            nodePanel.collapseFixed = true;
            $(this).children().children().children('button').addClass('is-sticky').css('left', left).css('bottom', '12px');
        }
        else if((panelBottom < windowHeight || contentTop > windowHeight )
            && nodePanel.collapseFixed){
            nodePanel.collapseFixed = false;
            $(this).children().children().children('button').removeClass('is-sticky');
        }
    })

})
// 评论展开收起
$('.toggle-comment').each(function () {
    $(this).click(function () {
        var content = $(this).text();
        if(content != '收起评论'){
            $(this).html("<i class='z-icon-comment'></i>收起评论");
            $(this).parent().next().css('display', 'block');
            $(this).parent().addClass('focusIn');
        }
        else {
            var num = parseInt($(this).attr('num'));
            $(this).html("<i class='z-icon-comment'></i>" + num + " 条评论");
            $(this).parent().next().css('display', 'none');
            $(this).parent().removeClass('focusIn');
        }
    })
})
// 点击添加评论
$('.zu-top-add-question').click(function () {
    $('.modal-dialog-bg').css('display', 'block');
    $('.modal-wrapper').removeClass('hidden');
})
// 关闭评论输入
$('.modal-dialog-title-close').click(function () {
    $('.modal-wrapper').addClass('hidden');
    $('.modal-dialog-bg').css('display', 'none');
})

$('input._inputBox_root').focus(function () {
    $('._commentForm-border').addClass('expanded');
})
$('a.zm-comment-cancel').click(function () {
    $('._commentForm-border').removeClass('expanded');
})

// 输入回答时高亮
$('#mock').focus(function () {
    $(this).parent().addClass('zm-editable-editor-field-active');
})
$('#mock').blur(function () {
    $(this).parent().removeClass('zm-editable-editor-field-active');
})
