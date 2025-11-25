require "openai"

class LivingTodosController < ApplicationController
  def new
    # 都道府県選択用サンプル
    @prefectures = ["東京都", "大阪府", "京都府"]
  end

  def create
    prefecture = params[:prefecture]

    # 都道府県ごとのサンプルTODO
    sample_todos = {
      "東京都" => ["住民票の移動", "転出・転入手続き", "国民健康保険加入", "マイナンバー住所変更", "運転免許証の住所変更"],
      "大阪府" => ["住民票の移動", "転出・転入手続き", "国民健康保険加入", "学校手続き", "公共料金契約"],
      "京都府" => ["住民票の移動", "転出・転入手続き", "国民健康保険加入", "電気・ガス契約", "銀行口座開設"]
    }

    # 都道府県ごとの代表市町村リンク
    city_links = {
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

    @todos = sample_todos[prefecture]
    @links = city_links[prefecture]
    @prefecture = prefecture
  end
end