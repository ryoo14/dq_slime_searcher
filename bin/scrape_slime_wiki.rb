#fronze_string_literal: true

require 'nokogiri'
require 'open-uri'
require 'dq_slime_searcher'

user_agent = "dq_slime_searcher/#{DqSlimeSearcher::VERSION} (https://github.com/ryoo14/dq_slime_searcher)"
puts user_agent

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
  slime_en_ja_map[key] = slime_doc.css('.infobox tbody tr td .explain').text

  sleep 5
end

p slime_en_ja_map

# TODO: diffrent tag per pages... add if or etc for pages.
# ex. {"Slime"=>"スライム", "She-slime"=>"Suraimu Besu", "Metal slime"=>"Metaru suraimu", "Bubble slime"=>"Baburu Suraimu", "Liquid metal slime"=>"Hagure metaru", "Healslime"=>"Hoimi suraimu", "Cureslime"=>"ベホマスライムbehoma suraimu", "Seaslime"=>"", "Shell slime"=>"", "Snail slime"=>"", "King slime"=>"Kingu suraimu", "King cureslime"=>"Suraimu behomazun", "Metal king slime"=>"", "Liquid metal slime king"=>"", "Medislime"=>"Behoimi Suraimu", "Slime knight"=>"Suraimu naito", "Metal slime knight"=>"Metaru raidā", "Mottle slime"=>"", "Mottle king slime"=>"", "Snowmangler"=>"", "Dragon slime"=>"Suraimuburesu", "Drake slime"=>"", "Angel slime"=>"Enzerusuraimu", "Magic slime"=>"", "Aqua slime"=>"", "Box slime"=>"", "Wild slime"=>"", "Tree slime"=>"", "Dark slime"=>"", "Dark slime knight"=>"", "Cyber slime"=>"", "Gem slime"=>"", "Darkonium slime"=>"Slime Madeyura", "Platinum king jewel"=>"Platinum King", "Grandpa slime"=>"Granslime", "Slemperor"=>"", "Slionheart"=>"God Rider", "Slime stack"=>"Suraimu tawā", "Metal medley"=>"Metal Brothers", "Gem jamboree"=>"", "Behemoth slime"=>"", "Magma slime"=>"", "Slimecicle"=>"", "Slabbit"=>"", "Mime slime"=>"Clown Slime", "Pearl gel"=>"", "Rubble slime"=>"", "Shogum"=>"Slime General", "Wing slime"=>"hane suraimu", "Sootheslime"=>"", "Prime slime"=>"", "Metal kaiser slime"=>"", "Ultra slime"=>"", "Master slime"=>"", "Diamond slime"=>"", "Nemeslime"=>"", "Queen slime"=>"Kuiin suraimu", "Beshemoth slime"=>"", "Bad egg"=>"", "Seedy weedie"=>"", "Flan slime"=>"", "Crème caraslime"=>""}
