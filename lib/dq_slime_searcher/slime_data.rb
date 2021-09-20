# frozen_string_literal: true

module DqSlimeSearcher
  class SlimeData
    attr_reader :slime_hash_jp
    attr_reader :slime_hash_en

    def initialize
      @slime_hash_en = {}
      @slime_hash_jp = {}

      [
        ['angel slime'             , 'エンゼルスライム'],
        ['aqua slime'              , 'アクアスライム'],
        ['bad egg'                 , 'タマゴロン'],
        ['behemoth slime'          , 'もりもりスライム'],
        ['beshemoth slime'         , 'もりもりベス'],
        ['box slime'               , 'ボック ススライム'],
        ['bubble slime'            , 'バブルスライム'],
        ['crème caraslime'         , 'スライムプディング'],
        ['cureslime'               , 'ベホマスライム'],
        ['cyber slime'             , 'スライムボーグ'],
        ['dark slime knight'       , 'ダークナイト'],
        ['dark slime'              , 'ダークスライム'],
        ['darkonium slime'         , 'スライムマデュラ'],
        ['diamond slime'           , 'ダイヤモンドスライム'],
        ['dragon slime'            , 'スライムブレス'],
        ['drake slime'             , 'ドラゴスライム'],
        ['flan slime'              , 'フランスライム'],
        ['gem jamboree'            , 'ゴールデントーテム'],
        ['gem slime'               , 'ゴールデンスライム'],
        ['grandpa slime'           , 'グランスライム'],
        ['healslime'               , 'ホイミスライム'],
        ['king cureslime'          , 'スライムベホマズン'],
        ['king slime'              , 'キングスライム'],
        ['liquid metal slime king' , 'はぐれメタルキング'],
        ['liquid metal slime'      , 'はぐれメタル'],
        ['magic slime'             , 'まどうスライム'],
        ['magma slime'             , 'マグマスライム'],
        ['master slime'            , 'マスタースライム'],
        ['medislime'               , 'ベホイミスライム'],
        ['metal kaiser slime'      , 'メタルカイザー'],
        ['metal king slime'        , 'メタルキング'],
        ['metal medley'            , 'メタルブラザーズ'],
        ['metal slime knight'      , 'メタルライダー'],
        ['metal slime'             , 'メタルスライム'],
        ['mime slime'              , 'ピエロスライム'],
        ['mottle king slime'       , 'ぶちキング'],
        ['mottle slime'            , 'ぶちスライム'],
        ['nemeslime'               , '死神スライダーク'],
        ['pearl gel'               , 'パールスライム'],
        ['platinum king jewel'     , 'プラチナキング'],
        ['prime slime'             , 'デンガー'],
        ['queen slime'             , 'クイーンスライム'],
        ['rubble slime'            , 'ストーンスライム'],
        ['seaslime'                , 'マリンスライム'],
        ['seedy weedie'            , 'ルーファ'],
        ['she-slime'               , 'スライムべス'],
        ['shell slime'             , 'スライムつむり'],
        ['shogum'                  , 'スライムジェネラル'],
        ['slabbit'                 , 'スラッピー'],
        ['slemperor'               , 'スライムエンペラー'],
        ['slime knight'            , 'スライムナイト'],
        ['slime stack'             , 'スライムタワー'],
        ['slime'                   , 'スライム'],
        ['slimecicle'              , 'つららスライム'],
        ['slionheart'              , 'ゴッドライダー'],
        ['snail slime'             , 'スライムカルゴ'],
        ['snowmangler'             , 'スノーム'],
        ['sootheslime'             , 'ベホイムスライム'],
        ['tree slime'              , 'スライムツリー'],
        ['ultra slime'             , 'スライダーヒーロー'],
        ['wild slime'              , 'スライムファング'],
        ['wing slime'              , 'はねスライム']
      ].each do |en, jp|
        @slime_hash_en.store(en, jp)
        @slime_hash_jp.store(jp, en)
      end
    end
  end
end
