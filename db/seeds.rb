hokkaido = Region.find_or_create_by!(name: "北海道", slug: "hokkaido")
touhoku = Region.find_or_create_by!(name: "東北", slug: "touhoku")
kanto = Region.find_or_create_by!(name: "関東", slug: "kanto")
chubu = Region.find_or_create_by!(name: "中部", slug: "chubu")
kinki = Region.find_or_create_by!(name: "近畿", slug: "kinki")
chugoku = Region.find_or_create_by!(name: "中国", slug: "chugoku")
shikoku = Region.find_or_create_by!(name: "四国", slug: "shikoku")
kyushu = Region.find_or_create_by!(name: "九州", slug: "kyushu")
okinawa = Region.find_or_create_by!(name: "沖縄", slug: "okinawa")


hokkaido.prefectures.find_or_create_by!(name: "北海道", slug: "hokkaido")

touhoku.prefectures.find_or_create_by!(name: "青森", slug: "aomori")
touhoku.prefectures.find_or_create_by!(name: "秋田", slug: "akita")
touhoku.prefectures.find_or_create_by!(name: "岩手", slug: "iwate")
touhoku.prefectures.find_or_create_by!(name: "宮城", slug: "miyagi")
touhoku.prefectures.find_or_create_by!(name: "山形", slug: "yamagata")
touhoku.prefectures.find_or_create_by!(name: "福島", slug: "fukushima")

kanto.prefectures.find_or_create_by!(name: "栃木", slug: "tochigi")
kanto.prefectures.find_or_create_by!(name: "茨城", slug: "ibaraki")
kanto.prefectures.find_or_create_by!(name: "群馬", slug: "gunma")
kanto.prefectures.find_or_create_by!(name: "埼玉", slug: "saitama")
kanto.prefectures.find_or_create_by!(name: "千葉", slug: "chiba")
kanto.prefectures.find_or_create_by!(name: "東京", slug: "tokyo")
kanto.prefectures.find_or_create_by!(name: "神奈川", slug: "kanagawa")

chubu.prefectures.find_or_create_by!(name: "新潟", slug: "nigata")
chubu.prefectures.find_or_create_by!(name: "富山", slug: "toyama")
chubu.prefectures.find_or_create_by!(name: "石川", slug: "ishikawa")
chubu.prefectures.find_or_create_by!(name: "福井", slug: "fukui")
chubu.prefectures.find_or_create_by!(name: "山梨", slug: "yamanashi")
chubu.prefectures.find_or_create_by!(name: "長野", slug: "nagano")
chubu.prefectures.find_or_create_by!(name: "岐阜", slug: "gifu")
chubu.prefectures.find_or_create_by!(name: "静岡", slug: "shizuoka")
chubu.prefectures.find_or_create_by!(name: "愛知", slug: "aichi")
chubu.prefectures.find_or_create_by!(name: "三重", slug: "mie")

kinki.prefectures.find_or_create_by!(name: "滋賀", slug: "shiga")
kinki.prefectures.find_or_create_by!(name: "京都", slug: "kyoto")
kinki.prefectures.find_or_create_by!(name: "大阪", slug: "osaka")
kinki.prefectures.find_or_create_by!(name: "兵庫", slug: "hyougo")
kinki.prefectures.find_or_create_by!(name: "奈良", slug: "nara")
kinki.prefectures.find_or_create_by!(name: "和歌山", slug: "wakayama")

chugoku.prefectures.find_or_create_by!(name: "鳥取", slug: "tottori")
chugoku.prefectures.find_or_create_by!(name: "島根", slug: "simane")
chugoku.prefectures.find_or_create_by!(name: "岡山", slug: "okayama")
chugoku.prefectures.find_or_create_by!(name: "広島", slug: "hiroshima")
chugoku.prefectures.find_or_create_by!(name: "山口", slug: "yamaguchi")

shikoku.prefectures.find_or_create_by!(name: "徳島", slug: "tokushima")
shikoku.prefectures.find_or_create_by!(name: "香川", slug: "kagawa")
shikoku.prefectures.find_or_create_by!(name: "愛媛", slug: "ehime")
shikoku.prefectures.find_or_create_by!(name: "高知", slug: "kouchi")

kyushu.prefectures.find_or_create_by!(name: "福岡", slug: "fukuoka")
kyushu.prefectures.find_or_create_by!(name: "佐賀", slug: "saga")
kyushu.prefectures.find_or_create_by!(name: "長崎", slug: "nagasaki")
kyushu.prefectures.find_or_create_by!(name: "熊本", slug: "kumamoto")
kyushu.prefectures.find_or_create_by!(name: "大分", slug: "oita")
kyushu.prefectures.find_or_create_by!(name: "宮崎", slug: "miyazaki")
kyushu.prefectures.find_or_create_by!(name: "鹿児島", slug: "kagoshima")

okinawa.prefectures.find_or_create_by!(name: "沖縄", slug: "okinawa")

puts "dataの作成が完了しました"

#User.create!(
    #email: "p@p",
    #name: "pp",
    #password: "pppppp"
  #)