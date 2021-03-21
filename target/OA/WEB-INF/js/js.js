$(document).ready(function(){
//点击删除按钮弹出删除框(billList.html)
    $(function () {
       function del (data)
        {
            var a = '/user/del?userId='+data
            $('.zhezhao').css('display', 'block');
            $('<div class="removerChid">' +
                '<h2>提示</h2>' +
                '<div class="removeMain">' +
                    '<p>你确定要删除该数据吗？</p>' +
                    '<a href="'+ a +'" id="yes">确定</a>' +
                    '<a href="#" id="no">取消</a>' +
                '</div>' +
                '</div>').appendTo('.remove');
            $('#removeBi').fadeIn();
            $('#no').click(function () {
                $('.zhezhao').css('display', 'none');
                $('#removeBi').fadeOut();
                $('.remove').empty();
            });
            $('#yes').click(function () {
                $('.zhezhao').css('display', 'none');
                $('#removeBi').fadeOut();
                $('.remove').empty();
            });
        }
    });
});

    // $(function () {
    //     $('#no').click(function () {
    //         $('.zhezhao').css('display', 'none');
    //         $('#removeBi').fadeOut();
    //     });
    // });
    // $(function () {
    //     $('#yes').click(function () {
    //         var data = $('.removeBill').attr(data)
    //         console.log(data)
    //         $('#yes').attr("href","data")
    //         console.log($('#yes').attr(href))
    //         $('.zhezhao').css('display', 'none');
    //         $('#removeBi').fadeOut();
    //     });
    // });

