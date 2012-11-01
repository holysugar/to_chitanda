# coding: utf-8
require 'minitest/spec'
require 'minitest/autorun'
require 'to_chitanda/kansuuji'

describe ToChitanda::Kansuuji do
  describe "kansuuji(number)" do
    include ToChitanda::Kansuuji

    [
    #   argument,      result
      [        0,       "〇"],
      [        1,       "一"],
      [        2,       "二"],

      [       10,           "十"],
      [       11,         "十一"],
      [       12,         "十二"],
      [       20,         "二十"],
      [       21,       "二十一"],
      [      100,           "百"],
      [      321,   "三百二十一"],
      [     1000,           "千"],
      [     1321, "千三百二十一"],

      [      10000,     "一万"],
      [     100000,     "十万"],
      [      10001,   "一万一"],
      [1_0000_0000,     "一億"],

      [12_3456_7890_1234, "十二兆三千四百五十六億七千八百九十万千二百三十四"],

    ].each do |arg, result|

      it "#{arg} -> #{result}" do
        kansuuji(arg).must_be :==, result
      end

    end

    it "lt 0 raises ArgumentError" do
      lambda{ kansuuji(-1) }.must_raise ArgumentError
    end
  end

end


