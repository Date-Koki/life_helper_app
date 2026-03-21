class LivingTodo < ApplicationRecord

  TODO_TEMPLATES = {
    "手続き" => [
      "住民票の移動",
      "マイナンバー住所変更",
      "郵便物の転送届"
    ],
    "引越し" => [
      "引越し業者の予約",
      "荷造り",
      "不用品の処分"
    ],
    "家具・家電" => [
      "冷蔵庫の購入",
      "洗濯機の設置",
      "カーテン購入"
    ],
      "掃除" => [
      "入居前の掃除",
      "水回り掃除",
      "掃除道具の準備"
    ]
  }

  CITY_LINKS = {
    "大阪府" => {
      "大阪市" => "https://www.city.osaka.lg.jp/",
      "堺市" => "https://www.city.sakai.lg.jp/"
    },
    "東京都" => {
      "千代田区" => "https://www.city.chiyoda.lg.jp/"
    }
  }
end