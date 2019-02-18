$(function() {
  // ポップオーバーアクション
  $("[data-toggle=popover]").popover({
    trigger: 'hover', // click,hover,focus,manualを選択出来る
    html: true,       // HTMLタグを含めるか
  });
});

jQuery(document).ready(function(){
  /*open*/
  $('.menu__icon').on('click',function(){
    $('.sidebar').css(
      'display','block'
    ).animate({
      right:'0'
    },
      300
    );
    $('.sidebar-bg').css(
      'display','block'
    ).animate({
      opacity:'0.5'
    },
      300
    )
  });
  /*close*/
  $('.sidebar__icon').on('click',function(){
    $('.sidebar').animate({
      right:'-200px'
    },
      300
    );
    $('.sidebar-bg').animate({
      opacity:'0'
    },
      300
    );
    setTimeout(function(){
      $('.sidebar').css('display','none');
      $('.sidebar-bg').css('display','none');
    },
      300
    );
  });
});