# coding: utf-8


module ToChitanda
  module Kansuuji

    KANJI_NUMBERS = %w(〇 一 二 三 四 五 六 七 八 九)
    LOWER_RANKS   = [nil] + %w(十 百 千)
    UPPER_RANKS   = [nil] + %w(万 億 兆)
    MAX_NUMBER    = 1_0000_0000_0000_0000

    def kansuuji(number)
      raise ArgumentError, "can't calculate negative number" if number < 0
      raise ArgumentError, "can't calculate gte #{MAX_NUMBER}" if number >= MAX_NUMBER
      return KANJI_NUMBERS[0] if number == 0

      ranks   = UPPER_RANKS.dup
      results = []

      while number > 0
        number, lower = number.divmod(10000)
        results << "#{kansuuji_lower(lower, ranks.shift)}"
      end

      results.reverse.join
    end

    private
    def kansuuji_lower(number, suffix = nil)
      return ''                                  if number == 0
      return "#{KANJI_NUMBERS[number]}#{suffix}" if number <= 9
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

      "#{kanjis.reverse.join}#{suffix}"
    end

    extend self
  end
end
