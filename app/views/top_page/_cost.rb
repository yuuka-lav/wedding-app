def post_review(a_cart)
  # 商品名、値段、個数を入力させ合計金額を出し、配列に保存してください。

    puts "商品名を入力してください："
    name = gets.chomp
    puts "値段を入力してください："
    value = gets.to_i
    puts "個数を入力してください："
    stock = gets.to_i
    line = "---------------------------"

  cart = { name: name,value: value,stock: stock }

    
  # 入力された値の描画
    puts "#{line}\n"
    puts "商品名 : #{cart[:name]}\n#{line}"
    puts "値段 : #{cart[:value]}円\n#{line}"
    puts "個数 : #{cart[:stock]}個\n#{line}"
    puts "合計金額 : #{cart[:value] * cart[:stock]}円\n#{line}"
  
  # 配列オブジェクトに追加
  a_cart << cart
  # a_cartをメソッドの呼び出し元に返す
  return  a_cart
  
end
  
  def check_reviews(a_cart)
total = 0
line = "---------------------------"

  a_cart.each do  |cart|
  puts "#{cart[:name]}/#{cart[:value]}円/#{cart[:stock]}個\n#{line}"
  total += cart[:value] * cart[:stock]
 end
  # 全ての商品の合計金額を表示
    puts "合計金額 : #{total}\n#{line}"
  
    puts "[0]購入確定する"
    puts "[1]買い物を続ける"
    input = gets.to_i
  
    if input == 0
      buy_program(total)
    elsif input == 1
      return
    else
      exception
    end
  end
  
  def buy_program(total)
    line = "---------------------------"
    puts "#{line}\n"
    puts "合計金額 : #{total}円\n#{line} "
    puts "支払う金額を入力してください："
    input = gets.to_i

 if input >= total
    cost  = input - total
    puts "お釣り : #{cost}円"
 else
    puts "金額が足りません"
    buy_program(total)
  # 金額が足りない場合はもう一度、buy_program(total_price)を実行
 end
end

  
  def end_program
   exit 
  end
  
  def exception
    puts "入力された値は無効な値です"
  end
  
  cart = []
  
  while true do
  # メニューの表示
    puts "商品数: #{cart.length}"
    puts "[0]商品をカートに入れる"
    unless cart.empty?       #カートに商品がない場合は[1]は選択できない
      puts "[1]カートを確認する"
    end
    puts "[2]アプリを終了する"
    input = gets.to_i
  
    if input == 0 then
      cart = post_review(cart) 
    elsif input == 1 then
      check_reviews(cart) 
    elsif input == 2 then
      end_program     
    else
      exception          
    end
  end