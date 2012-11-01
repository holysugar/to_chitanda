# coding: utf-8
require 'minitest/spec'
require 'minitest/autorun'
require 'to_chitanda/kansuuji'

describe ToChitanda::Kansuuji do
  describe "kansuuji(number)" do
    include ToChitanda::Kansuuji

    [
    #   argument, result
      [        0,     "〇"],
      [        1,     "一"],
      [        2,     "二"],

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


