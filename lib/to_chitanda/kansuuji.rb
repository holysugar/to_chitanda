# coding: utf-8


module ToChitanda
  module Kansuuji

    KANJI_NUMBERS = %w(〇 一 二 三 四 五 六 七 八 九)
    LOWER_RANKS   = [nil] + %w(十 百 千)

    def kansuuji(number)
      raise ArgumentError, "can't calculate negative number" if number < 0

      number, lower = number.divmod(10000)

      kansuuji_lower_10000(lower)
    end

    private
    def kansuuji_lower_10000(number)
      return KANJI_NUMBERS[number] if number <= 9
      ranks = LOWER_RANKS.dup
      kanjis = []

      while number > 0
        number, mod = number.divmod(10)
        rank = ranks.shift
        kanji = case mod
              when 0; ''
              when 1; rank || KANJI_NUMBERS[1]
              else  ; "#{KANJI_NUMBERS[mod]}#{rank}"
              end
        kanjis << kanji
      end

      kanjis.reverse.join

    end

    extend self
  end
end
