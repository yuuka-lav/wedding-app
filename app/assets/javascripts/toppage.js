$(function() {
	var lists = $('.list li');
	lists.hide(); // 最初はリストを非表示にする
	$('#searchs').on('click', function() {
		lists.show();
		$('.none').hide();
		for (var i = 0; i < $('.serchBox select').length; i++) {
			// 絞り込みの項目を取得
			var item = $('.serchBox select').eq(i).attr('name');
			// 絞り込みの対象を取得
			var target = $('.serchBox select').eq(i).val();

			if(target != '') {
				for (var j = 0; j < lists.length; j++) {
					// 絞り込み対象でない場合は非表示
					if(!lists.eq(j).find('.' + item).find('span').hasClass(target)) {
						lists.eq(j).hide();
					}
				};
			}
		}
		// 一致するリストがない場合はテキスト表示
		if(!$('.list li:visible').length) {
			$('.none').show();
		}
	});
});

