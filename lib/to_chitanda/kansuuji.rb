# coding: utf-8


module ToChitanda
  module Kansuuji

    KANJI_NUMBERS = %w(〇 一 二 三 四 五 六 七 八 九)
    LOWER_RANKS   = [''] + %w(十 百 千)

    def kansuuji(number)
      raise ArgumentError, "can't calculate negative number" if number < 0
      return KANJI_NUMBERS[number] if number <= 9
    end

    extend self
  end
end
