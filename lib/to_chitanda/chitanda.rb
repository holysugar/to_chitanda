# coding: utf-8
require 'to_chitanda/kansuuji'

module ToChitanda
  module Chitanda
    def chitanda(number)
      "#{Kansuuji.kansuuji(number)}反田#{alpha_kana(number)}"
    end

    def alpha_kana(number)
      %w(えー びー しー でー いー えふ じー えいち あい じぇー けー える えむ えぬ おー ぴー きゅー あーる えす てー ゆー ぶい だぶりゅー えっくす わい ぜっと)[(number-1) % 26]
    end

    extend self
  end
end
