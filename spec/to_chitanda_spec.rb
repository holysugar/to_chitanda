# coding: utf-8
require 'minitest/spec'
require 'to_chitanda'

describe Integer do
  describe "#to_chitanda" do
    it "chitanda(1000) -> 千反田える" do
         1.to_chitanda.must_be :==, "一反田えー"
      1000.to_chitanda.must_be :==, "千反田える"
    end
  end
end



