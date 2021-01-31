$(function(){
	// hover() 方法规定当鼠标指针悬停在被选元素上时要运行的两个函数。	
	// 方法触发 mouseenter 和 mouseleave 事件。	
	// 注意: 如果只指定一个函数，则 mouseenter 和 mouseleave 都执行它
	$('#menu>ul').hover(function() {
		// slideDown通过滑动方式隐藏元素
		$(this).find('li').stop().slideDown(300);
		// siblings遍历所有的同级元素
		$(this).css("background", "red").siblings().css("background", "black");
	}, function() {
		$(this).find('li').stop().slideUp(300);
	});
	
	$('.headerLi').mouseover(function() {
		$(this).css({
			"background": "#fe8761",
			"color": "black",
			"font-size": "18px"
		});
	}).mouseout(function() {
		$(this).css({
			"background": "#5f6caf",
			"color": "white",
			"font-size": "15px"
		});
	});		
})

