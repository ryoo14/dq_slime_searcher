#fronze_string_literal: true

require 'nokogiri'
require 'open-uri'
require 'dq_slime_searcher'
user_agent = "dq_slime_searcher/#{DqSlimeSearcher::VERSION} (https://github.com/ryoo14/dq_slime_searcher)"

BASE_URI = 'https://dragon-quest.org'
slime_family_doc = Nokogiri::HTML(URI.open(BASE_URI + '/wiki/slime_family',
                                          'User-Agent' => user_agent))

slime_uri_map = {}
slime_family_doc.css('table tbody tr td ul li a').each do |t|
  slime_uri_map[t.text] = t.attribute('href').text
end

slime_en_ja_map = {}
slime_uri_map.keys.each do |key|
  slime_doc = Nokogiri::HTML(URI.open(BASE_URI + slime_uri_map[key],
                                     'User-Agent' => user_agent))
  infobox = slime_doc.css('.infobox tbody tr td')

  # the Japanese name of the slime is stored in the second infobox element.
  slime_en_ja_map[key] = infobox[1].text.chomp

  sleep 5
end

p slime_en_ja_map

# 2021/09/20
# {"Slime"=>"スライム", "She-slime"=>"スライムべス", "Metal slime"=>"メタルスライム", "Bubble slime"=>"バブルスライム", "Liquid metal slime"=>"はぐれメタル", "Healslime"=>"ホイミスライム", "Cureslime"=>"ベホマスライム", "Seaslime"=>"マリンスライム", "Shell slime"=>"スライムつむり", "Snail slime"=>"スライムカルゴ", "King slime"=>"キングスライム", "King cureslime"=>"スライムベホマズン", "Metal king slime"=>"メタルキング", "Liquid metal slime king"=>"はぐれメタルキング", "Medislime"=>"ベホイミスライム", "Slime knight"=>"スライムナイト", "Metal slime knight"=>"メタルライダー", "Mottle slime"=>"ぶちスライム", "Mottle king slime"=>"ぶちキング", "Snowmangler"=>"スノーム", "Dragon slime"=>"スライムブレス", "Drake slime"=>"ドラゴスライム", "Angel slime"=>"エンゼルスライム", "Magic slime"=>"まどうスライム", "Aqua slime"=>"アクアスライム", "Box slime"=>"ボック ススライム", "Wild slime"=>"スライムファング", "Tree slime"=>"スライムツリー", "Dark slime"=>"ダークスライム", "Dark slime knight"=>"ダークナイト", "Cyber slime"=>"スライムボーグ", "Gem slime"=>"ゴールデンスライム", "Darkonium slime"=>"スライムマデュラ", "Platinum king jewel"=>"プラチナキング", "Grandpa slime"=>"グランスライム", "Slemperor"=>"スライムエンペラー", "Slionheart"=>"ゴッドライダー", "Slime stack"=>"スライムタワー", "Metal medley"=>"メタルブラザーズ", "Gem jamboree"=>"ゴールデントーテム", "Behemoth slime"=>"もりもりスライム", "Magma slime"=>"マグマスライム", "Slimecicle"=>"つららスライム", "Slabbit"=>"スラッピー", "Mime slime"=>"ピエロスライム", "Pearl gel"=>"パールス ライム", "Rubble slime"=>"ストーンスライム", "Shogum"=>"スライムジェネラル", "Wing slime"=>"はねスライム", "Sootheslime"=>"ベホイムスライム", "Prime slime"=>"デンガー", "Metal kaiser slime"=>"メタルカイザー", "Ultra slime"=>"スライダーヒーロー", "Master slime"=>"マスタースライム", "Diamond slime"=>"ダイヤモンドスライム", "Nemeslime"=>"死神ス ライダーク", "Queen slime"=>"クイーンスライム", "Beshemoth slime"=>"もりもりベス", "Bad egg"=>"タマゴロン", "Seedy weedie"=>"ルーファ", "Flan slime"=>"フランスライム", "Crème caraslime"=>"スライムプディング"}

