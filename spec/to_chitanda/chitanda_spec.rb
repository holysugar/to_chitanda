# coding: utf-8
require 'minitest/spec'
require 'to_chitanda/chitanda'

describe ToChitanda::Chitanda do
  describe "chitanda" do
    it "chitanda(1000) -> 千反田える" do
      ToChitanda::Chitanda.chitanda(   1).must_be :==, "一反田えー"
      ToChitanda::Chitanda.chitanda(1000).must_be :==, "千反田える"
    end
  end

  describe "alpha_kana" do
    [
      # argument, result
      [    1, "えー"],
      [    2, "びー"],
      [   27, "えー"],
      [ 1000, "える"],

    ].each do |arg, expect|

      it "give #{arg} returns #{expect}" do
        ToChitanda::Chitanda.alpha_kana(arg).must_be :==, expect
      end

    end
  end
end
