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
    "東京都" => {
      "千代田区" => "https://www.city.chiyoda.lg.jp/",
      "中央区" => "https://www.city.chuo.lg.jp/",
      "港区" => "https://www.city.minato.tokyo.jp/",
      "新宿区" => "https://www.city.shinjuku.lg.jp/",
      "文京区" => "https://www.city.bunkyo.lg.jp/",
      "台東区" => "https://www.city.taito.lg.jp/",
      "墨田区" => "https://www.city.sumida.lg.jp/",
      "江東区" => "https://www.city.koto.lg.jp/",
      "品川区" => "https://www.city.shinagawa.tokyo.jp/",
      "目黒区" => "https://www.city.meguro.tokyo.jp/",
      "大田区" => "https://www.city.ota.tokyo.jp/",
      "世田谷区" => "https://www.city.setagaya.lg.jp/",
      "中野区" => "https://www.city.tokyo-nakano.lg.jp/",
      "杉並区" => "https://www.city.suginami.tokyo.jp/",
      "豊島区" => "https://www.city.toshima.lg.jp/",
      "北区" => "https://www.city.kita.tokyo.jp/",
      "荒川区" => "https://www.city.arakawa.tokyo.jp/",
      "板橋区" => "https://www.city.itabashi.tokyo.jp/",
      "練馬区" => "https://www.city.nerima.tokyo.jp/",
      "足立区" => "https://www.city.adachi.tokyo.jp/",
      "葛飾区" => "https://www.city.katsushika.lg.jp/",
      "江戸川区" => "https://www.city.edogawa.tokyo.jp/",
      "渋谷区" => "https://www.city.shibuya.tokyo.jp/"
    },
    "大阪府" => {
      "大阪市" => "https://www.city.osaka.lg.jp/",
      "堺市" => "https://www.city.sakai.lg.jp/",
      "高槻市" => "https://www.city.takatsuki.osaka.jp/",
      "吹田市" => "https://www.city.suita.osaka.jp/",
      "枚方市" => "https://www.city.hirakata.osaka.jp/",
      "東大阪市" => "https://www.city.higashiosaka.lg.jp/"
    },
    "京都府" => {
      "京都市" => "https://www.city.kyoto.lg.jp/",
      "宇治市" => "https://www.city.uji.kyoto.jp/",
      "亀岡市" => "https://www.city.kameoka.kyoto.jp/",
      "舞鶴市" => "https://www.city.maizuru.kyoto.jp/",
      "福知山市" => "https://www.city.fukuchiyama.lg.jp/",
      "長岡京市" => "https://www.city.nagaokakyo.lg.jp/"
    }
  }  

end