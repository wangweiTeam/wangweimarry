$(function(){
	//  几组星星
	var arrStars = $('.BOX > div');
	
	// 遍历所有的star,给每个star下的li都绑定属性和函数
	for(var k = 0; k < arrStars.length; k++){
		// 为每个div块设置className的值
		arrStars[k].className = 'star0'+k;
		// 查找星星的个数
		var star_arrLi = $('.star0'+[k] +'> .star_UL > li');
		// 设置分数
		var star_strong = $('.star0'+[k] +'> .star_result_span > strong');
		fun(star_arrLi, star_strong);
	}
	
	function fun(arrLi,strong){
		// 遍历所有的li,给每个li都绑定属性和函数
		for (var i =0; i<arrLi.length; i++) {
			// 添加index属性
			arrLi[i].index = i+1;
			arrLi[i].onmouseover = function(){
				//显现值几个星星
				ShowTars(this.index);
				strong.text(this.index + '分');// 星星后面的分数
			};
			
			//鼠标离开后恢复到上次显现的几个星星
			arrLi[i].onmouseout = function() {
				var sidNum = $(this).parents('ul').attr('sid');
				
				if(sidNum == 0){
					strong.text("");// 星星后面的分数
				}else{
					strong.text(sidNum + '分');// 星星后面的分数
				}
				ShowTars(sidNum);// 显现值几个星星
			};
			
			//点击后进行评分处理
			arrLi[i].onclick = function() {
				strong.text(this.index + '分');// 星星后面的分数
				$(this).parents('ul').attr('sid',this.index);
			};
		}
		
		// 显示num个星星
		function ShowTars(num) {
			// 遍历10颗星星,当小于num的时候就显示,否则不显示,通过添加class=on属性实现.
			for(var i = 0; i < arrLi.length; i++) {
				arrLi[i].className = i < num ? "on" : "";
			}
		};
		
	};

	$(".dashedThin").click(function(){
		$("li").removeClass("on"); 
		$("strong").text("");
		$("ul").attr("sid",0);
	})
});