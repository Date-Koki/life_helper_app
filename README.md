# アプリケーション名
新生活やることアプリ

# アプリケーション概要
新生活を始めるにあたって、自分がしなければならないTODOを管理するためのアプリです。<br>
また、ユーザー同士が新生活を始めるにあたって共有したいライフハックを投稿することができ、より良い新生活をサポートするものです。

# URL
https://life-helper-app.onrender.com

# テスト用アカウント
Basic認証ID：samurai<br>
Basic認証PASS：5589<br>
メールアドレス：sample1@sample.com<br>
パスワード：sample1

# 利用方法
## TODO投稿
1.トップページ（一覧ページ）のヘッダーにある「新規登録」ボタンからユーザー登録を行います。<br>
2.トップページ（一覧ページ）のヘッダーにある「TODO投稿」ボタンからTODO作成を行います。<br>
3.トップページ（一覧ページ）のヘッダーにある「AIでTODO作成」ボタンから居住地を選択して、必要なTODO作成をリスト化してもらうことができます。

## ライフハック投稿
1.トップページ（一覧ページ）のヘッダーにある「ライフハック投稿」ボタンからユーザー登録を行います。<br>
2.他のユーザーのライフハック投稿を閲覧する。また、参考になった投稿には、「いいね」ができます。

## ユーザー情報管理
1.トップページ（一覧ページ）のヘッダーにあるユーザー名が表示されているボタンからマイパージに入り、ユーザー情報を確認、編集を行います。<br>
2.マイページから作成したTODOと投稿したライフハックを確認し、編集・削除を行います。

## コメント投稿
1.ライフハック投稿の「詳細を見る」をクリックし、詳細を表示します。<br>
2.コメント欄にコメントを記載し、投稿ボタンをクリックします。

## いいね機能
1.ライフハック投稿の「詳細を見る」をクリックし、詳細を表示します。<br>
2.白いハートの横にある「いいね」をクリックし、一覧に戻ってから再度詳細を確認すると「いいね済」となります。

# アプリケーションを作成した背景
これまで、何回か引っ越しをする機会があり、その度に、タイトなスケジュールの中で手続きや生活環境を整える必要があり、その度に、手続きの漏れがあったり、買う必要があるものが足りなかったりした経験から新生活に特化したTODOアプリを作成したいと思いました。<br>
また、新生活を迎えた人がこれまでにして良かったと思うことを共有してもらう方が自分自身もより良い新生活を送ることができるのではないかと考え、その要素を含めたアプリの作成に至りました。

# 洗い出した要件
[要件定義シート](要件定義シート.xlsx)

# 実装した機能についての画像やGIF及びその説明
## 新規登録機能
・ユーザーの新規登録することができます。登録することでTODO投稿やライフハックの投稿、他のユーザーのライフハックへのコメント、いいねが可能となります。<br>
・各項目の条件を満たしていない場合は、エラー表示されるように設定しています。<br>
[![Image from Gyazo](https://i.gyazo.com/93bcea1f5f2ca0a5dcd2e720b2b2dc88.gif)](https://gyazo.com/93bcea1f5f2ca0a5dcd2e720b2b2dc88)

## TODO投稿機能
・TODOを投稿することができます。<br>
・投稿したいTODOの種別をカテゴリー選択できるように設定しています。<br>
・カレンダー機能で日時を選択できるようにしています。
[![Image from Gyazo](https://i.gyazo.com/b3a63b77337d0713b083992bacc1a02c.gif)](https://gyazo.com/b3a63b77337d0713b083992bacc1a02c)

## ライフハック投稿機能
・ライフハックを投稿することができます。<br>
・投稿したいライフハックの種別をカテゴリー選択できるように設定しています。<br>
・画像を添付できるように設定しています。
[![Image from Gyazo](https://i.gyazo.com/77f38102558735f588d0a98424a81653.gif)](https://gyazo.com/77f38102558735f588d0a98424a81653)

## 検索機能
・ライフハックを検索することができます。<br>
・ワード検索とカテゴリー検索の両方を備えることで検索しやすい仕様にしています。
[![Image from Gyazo](https://i.gyazo.com/bd1a5d14503942a78eacb862944554c2.gif)](https://gyazo.com/bd1a5d14503942a78eacb862944554c2)

## マイページ編集機能
・マイページで投稿したTODOとライフハックを編集、削除することができます。<br>
・削除する場合、本当に削除して良いかを表示される設定にしています。
[![Image from Gyazo](https://i.gyazo.com/79c054a589f7ba678a0cc6c87f4a3afc.gif)](https://gyazo.com/79c054a589f7ba678a0cc6c87f4a3afc)

## コメント機能
・他のユーザーが投稿したライフハックにいいねすることができます。<br>
・ログアウトした状態では投稿できない仕様にしています。<br>
・投稿したコメントがコメント投稿欄の下にユーザー名と併せて表示される仕様にしています。
.削除も可能としています。
[![Image from Gyazo](https://i.gyazo.com/bf320763d2df8f3952bc3718617f3bb5.gif)](https://gyazo.com/bf320763d2df8f3952bc3718617f3bb5)

## いいね機能
・他のユーザーが投稿したライフハックにいいねすることができます。<br>
・ページ遷移後もいいね状態を保持できるようにしています。
[![Image from Gyazo](https://i.gyazo.com/b3348610f293fa9ea6831f81bdea32d8.gif)](https://gyazo.com/b3348610f293fa9ea6831f81bdea32d8)

## TODO提案機能
・都道府県を選択して提案ボタンを押せば、作成した方がいいTODOを提案してくれます。<br>
・提案されたTODOのチェックボックスをチェック、やることの説明、日付を記載して「選択したTODOを追加」を押すと、TODOに登録されます。<br>
・現時点の仕様では、主要な都市のみ選択でき、提案もテンプレートとしていますが、地域特性やユーザー状況に応じた、より柔軟なTODO提案ができるよう、学習・改善を進めています。
[![Image from Gyazo](https://i.gyazo.com/4aee1e054f99003da043d8dbbd3febbb.gif)](https://gyazo.com/4aee1e054f99003da043d8dbbd3febbb)
[![Image from Gyazo](https://i.gyazo.com/6e8145a4d7f685e3cdd84a8d8c818134.gif)](https://gyazo.com/6e8145a4d7f685e3cdd84a8d8c818134)

## TODOの完了率表示機能
・TODO投稿したもののうち、完了したものは、完了ボタンを押して完了状態にできます。
・完了TODOを未完了状態に戻すことができます。
・完了登録すると、完了率に反映され、どのくらい完了したかを可視化することができます。
[![Image from Gyazo](https://i.gyazo.com/372b63bf1cedc682f971d5a272b8ecae.gif)](https://gyazo.com/372b63bf1cedc682f971d5a272b8ecae)

## 期限の近いTODOの表示機能
・期限が3日以内のTODOを投稿をした場合は、期限が近いタスクとして表示されます。
[![Image from Gyazo](https://i.gyazo.com/9f54f50dca8d7200358756b4fcdb8adb.gif)](https://gyazo.com/9f54f50dca8d7200358756b4fcdb8adb)

## 期限が過ぎているTODOの表示機能
・期限が過ぎているTODOがある場合は、赤枠で表示されるように設定しています。
[![Image from Gyazo](https://i.gyazo.com/6e2544b5256db4147abd7f8b2ce14182.gif)](https://gyazo.com/6e2544b5256db4147abd7f8b2ce14182)

## TODOのソート機能
・完了、未完了や投稿の新しい順、古い順、期限順など、必要に応じてソートをかけることができる設定にしています。
[![Image from Gyazo](https://i.gyazo.com/8f7447d223d4f80c3350c81d35a3e27b.gif)](https://gyazo.com/8f7447d223d4f80c3350c81d35a3e27b)

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
・ユーザーがわかりやすく、使いやすいアプリとするため、全体的にシンプルでわかりやすくするのを前提としながらも、見出しはアイコンを使って私生活で使うようなアプリとしてのポップな仕様にするなどの工夫をしています。<br>
・各機能の詳しい工夫ポイントは、上記の機能説明に記載しています。<br>

# 改善点
・AI生成できるようにする必要があります。<br>
・googleカレンダーに連携させて、期日が把握しやすくする必要があります。

# 制作期間
2ヶ月間(200時間)