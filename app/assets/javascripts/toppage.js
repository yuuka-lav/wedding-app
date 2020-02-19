// var searchBox = '.search-box'; // 絞り込む項目を選択するエリア
var lists = '.list li';   // 絞り込み対象のアイテム
// var hideClass = 'is-hide';     // 絞り込み対象外の場合に付与されるclass名

$(function() {
	var lists = $('.list li');
	$('#search').on('click', function() {
		lists.show();
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
		};
	});
});
// /**
//  * リストの絞り込みを行う
//  */
// function search_filter() {
//     // 非表示状態を解除
//     $(listItem).removeClass(hideClass);
//     for (var i = 0; i < $(searchBox).length; i++) {
//         var name = $(searchBox).eq(i).find('input').attr('name');
//         // 選択されている項目を取得
//         var searchData = get_selected_input_items(name);
//         // 選択されている項目がない、またはALLを選択している場合は飛ばす
//         if(searchData.length === 0 || searchData[0] === '') {
//             continue;
//         }
//         // リスト内の各アイテムをチェック
//         for (var j = 0; j < $(listItem).length; j++) {
//             // アイテムに設定している項目を取得
//             var itemData = get_setting_values_in_item($(listItem).eq(j), name);
//             // 絞り込み対象かどうかを調べる
//             var check = array_match_check(itemData, searchData);
//             if(!check) {
//                 $(listItem).eq(j).addClass(hideClass);
//             }
//         }
//     }
// }

// /**
//  * inputで選択されている値の一覧を取得する
//  * @param  {String} name 対象にするinputのname属性の値
//  * @return {Array}       選択されているinputのvalue属性の値
//  */
// function get_selected_input_items(name) {
//     var searchData = [];
//     $('[name=' + name + ']:checked').each(function() {
//         searchData.push($(this).val());
//     });
//     return searchData;
// }

// /**
//  * リスト内のアイテムに設定している値の一覧を取得する
//  * @param  {Object} target 対象にするアイテムのjQueryオブジェクト
//  * @param  {String} data   対象にするアイテムのdata属性の名前
//  * @return {Array}         対象にするアイテムのdata属性の値
//  */
// function get_setting_values_in_item(target, data) {
//     var itemData = target.data(data);
//     if(!Array.isArray(itemData)) {
//         itemData = [itemData];
//     }
//     return itemData;
// }

// /**
//  * 2つの配列内で一致する文字列があるかどうかを調べる
//  * @param  {Array} arr1 調べる配列1
//  * @param  {Array} arr2 調べる配列2
//  * @return {Boolean}    一致する値があるかどうか
//  */
// function array_match_check(arr1, arr2) {
//     // 絞り込み対象かどうかを調べる
//     var arrCheck = false;
//     for (var i = 0; i < arr1.length; i++) {
//         if(arr2.indexOf(arr1[i]) >= 0) {
//             arrCheck = true;
//             break;
//         }
//     }
//     return arrCheck;
// }

