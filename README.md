# アプリケーション名
新生活やることアプリ

# アプリケーション概要
新生活を始めるにあたって、自分がしなければならないTODOを管理するためのアプリです。
また、ユーザー同士が新生活を始めるにあたって共有したいライフハックを投稿することができ、より良い新生活をサポートするものです。

# URL
https://life-helper-app.onrender.com

# テスト用アカウント
Basic認証ID：samurai
Basic認証PASS：5589
メールアドレス：sample1@sample.com
パスワード：sample1

# 利用方法
## TODO投稿
1.トップページ（一覧ページ）のヘッダーにある「新規登録」ボタンからユーザー登録を行います。
2.トップページ（一覧ページ）のヘッダーにある「TODO投稿」ボタンからTODO作成を行います。
3.トップページ（一覧ページ）のヘッダーにある「AIでTODO作成」ボタンから居住地を選択して、必要なTODO作成をリスト化してもらうことができます。

## ライフハック投稿
1.トップページ（一覧ページ）のヘッダーにある「ライフハック投稿」ボタンからユーザー登録を行います。
2.他のユーザーのライフハック投稿を閲覧する。また、参考になった投稿には、「いいね」ができます。

## ユーザー情報管理
1.トップページ（一覧ページ）のヘッダーにあるユーザー名が表示されているボタンからマイパージに入り、ユーザー情報を確認、編集を行います。
2.マイページから作成したTODOと投稿したライフハックを確認し、編集・削除を行います。

## コメント投稿
1.ライフハック投稿の「詳細を見る」をクリックし、詳細を表示します。
2.コメント欄にコメントを記載し、投稿ボタンをクリックします。

## いいね機能
1.ライフハック投稿の「詳細を見る」をクリックし、詳細を表示します。
2.白いハートの横にある「いいね」をクリックし、一覧に戻ってから再度詳細を確認すると「いいね済」となります。

# アプリケーションを作成した背景
これまで、何回か引っ越しをする機会があり、その度に、タイトなスケジュールの中で手続きや生活環境を整える必要があり、その度に、手続きの漏れがあったり、買う必要があるものが足りなかったりした経験から新生活に特化したTODOアプリを作成したいと思いました。
また、作成するにあたって、他の新生活を迎えた人がして良かったと思うことを共有してもらう方が自分自身もより良い新生活を送ることができるのではないかと考え、その要素を含めたアプリを作りたいと思い、作成に至りました。

# 洗い出した要件
[要件定義シート](要件定義シート.xlsx)

# 実装した機能についての画像やGIF及びその説明
## 新規登録機能
・ユーザーの新規登録することができます。登録することでTODO投稿やライフハックの投稿、他のユーザーのライフハックへのコメント、いいねが可能となります。
・各項目の条件を満たしていない場合は、エラー表示されるように設定しています。
[![Image from Gyazo](https://i.gyazo.com/d296cc3b41aa3168164a31bba1f27e25.gif)](https://gyazo.com/d296cc3b41aa3168164a31bba1f27e25)

## TODO投稿機能
・TODOを投稿することができます。
・投稿したいTODOの種別をカテゴリー選択できるように設定しています。
・カレンダー機能で日時を選択できるようにしています。
[![Image from Gyazo](https://i.gyazo.com/31b20ba13d48fa451f0a9f9d3ddbbd6d.gif)](https://gyazo.com/31b20ba13d48fa451f0a9f9d3ddbbd6d)

## ライフハック投稿機能
・ライフハックを投稿することができます。
・投稿したいライフハックの種別をカテゴリー選択できるように設定しています。
・画像を添付できるように設定しています。
[![Image from Gyazo](https://i.gyazo.com/ece9adaebf766d9be43c409f24792120.gif)](https://gyazo.com/ece9adaebf766d9be43c409f24792120)

## 検索機能
・ライフハックを検索することができます。
・ワード検索とカテゴリー検索の両方を備えることで検索しやすい仕様にしています。
[![Image from Gyazo](https://i.gyazo.com/e39ffba0906ca88a269294b568c8fc62.gif)](https://gyazo.com/e39ffba0906ca88a269294b568c8fc62)

## マイページ編集機能
・マイページで投稿したTODOとライフハックを編集、削除することができます。
・削除する場合、本当に削除して良いかを表示される設定にしています。
[![Image from Gyazo](https://i.gyazo.com/2ef2fb6bb27fcdbd1ddd28b6ae114db9.gif)](https://gyazo.com/2ef2fb6bb27fcdbd1ddd28b6ae114db9)

## コメント機能
・他のユーザーが投稿したライフハックにいいねすることができます。
・ログアウトした状態では投稿できない仕様にしています。
・投稿したコメントがコメント投稿欄の下にユーザー名と併せて表示される仕様にしています。
[![Image from Gyazo](https://i.gyazo.com/b174011e57c382b0d5bacc607d20a510.gif)](https://gyazo.com/b174011e57c382b0d5bacc607d20a510)

## いいね機能
・他のユーザーが投稿したライフハックにいいねすることができます。
・ページ遷移後もいいね状態を保持できるようにしています。さらに使いやすいように非同期処理ができる仕様にできるように学習・改善を進めています。
[![Image from Gyazo](https://i.gyazo.com/1f6057fe79ea35f3d04951409f2fae39.gif)](https://gyazo.com/1f6057fe79ea35f3d04951409f2fae39)

## AI生成機能
・地域を選択すれば、AIがTODOを提案してくれます。
・現時点の仕様では、主要な都市のみ選択でき、提案もテンプレートとしていますが、地域特性やユーザー状況に応じた、より柔軟なTODO提案ができるよう、学習・改善を進めています。
[![Image from Gyazo](https://i.gyazo.com/42d2bfe5ef8811cce40888221bef425c.gif)](https://gyazo.com/42d2bfe5ef8811cce40888221bef425c)

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/e9f2013b4334a28edd28cde871dca32d.png)](https://gyazo.com/e9f2013b4334a28edd28cde871dca32d)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/eb15219fe0bb4268c29e951141b53b68.png)](https://gyazo.com/eb15219fe0bb4268c29e951141b53b68)

# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| nickname           | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |

### Association

- has_many :posts
- has_many :lifehack_posts

## posts テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| title              | string     | null: false |
| category_id        | integer    | null: false |
| scheduled_at       | datetime   | null: false |
| description        | text       | null: false |
| user               | references | null: false, foreign_key |

### Association

- belongs_to :user
- extend ActiveHash::Associations::ActiveRecordExtensions
- belongs_to :category

## lifehack_posts テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| title              | string     | null: false |
| category_id        | integer    | null: false |
| description        | text       | null: false |
| user               | references | null: false, foreign_key |

### Association

- belongs_to :user
- extend ActiveHash::Associations::ActiveRecordExtensions
- belongs_to :category

## lifehack_comments テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| user_id            | references | null: false, foreign_key |
| lifehack_post_id   | references | null: false, foreign_key |
| content.           | text       | null: false |

### Association

- belongs_to :user
- belongs_to :lifehack_post

# 開発環境
Ruby on rails

# ローカルでの動作方法
$ git clone https://github.com/Date-Koki/life_helper_app.git
$ cd life_helper_app
$ bundle install
$ rails db:create
$ rails db:migrate
$ rails s

# 工夫したポイント
・ユーザーがわかりやすく、使いやすいアプリとするため、全体的にシンプルな仕様にしています。
・各機能の詳しい工夫ポイントは、上記の機能説明に記載しております。
・今後、AI生成も可能となるような想定した仕様としています。

# 改善点
・いいねボタンを押した後に、すぐいいね済みとなるように非同期処理にする必要があります。
・AI生成できるようにする必要があります。
・googleカレンダーに連携させて、期日が把握しやすくする必要があります。

# 制作期間
2ヶ月間(200時間)