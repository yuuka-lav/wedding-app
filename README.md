## 🌐 App URL

### **http://52.194.83.62:1214/**  

## 📦 アプリの説明
結婚式場では、お客様側の意見としてはネットで調べても
実際に行って見積もりを出してもらわないと
予算がはっきりわからない
式場側としてはお客様の要求、こだわりたいところを
聞いてみないと予算をはっきり出せない
という現状を変えたいという想いから『費用チェック』ができるアプリです。

## 💬 使用方法

１、アプリにログイン<br>
  <img src="https://i.gyazo.com/5d2d10f7775bb52f675a039c5501b066.png" width="600x600">
２、検索して見たい式場を探す or 一覧から探す<br>
  <img src="https://i.gyazo.com/003f69ebb6ea926654a85b5c26997092.jpg" width="600x600">
３、気に入ったページがあれば詳細をみる をクリック<br>
４、その式場ごとの情報ページがあり最後のページに『費用チェック』がある<br>
  <img src="https://i.gyazo.com/51dafe0433f5f53e6eff7e9b96417d6b.jpg" width="600x600">
５、自分のこだわりたいところをこだわるとどのくらいの値段になるのか計算できます。

 
## 使用技術一覧

- Ruby 2.5.1
- Ruby on Rails 5.0.7.2
- mysql2 0.5.3
- Haml 5.1.2
- Sass 3.7.4
- jQuery
- AWS
  - EC2
- Github
 
## 作者

mail to: 070.kotaka.yuuka@mail.com
 
## ライセンス
<!--  
[MIT](http://TomoakiTANAKA.mit-license.org)</blockquote> -->


# DB設計

## userテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|

### Association
- has_many :halls

## hallテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- belongs_to :user