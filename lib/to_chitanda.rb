require "to_chitanda/version"
require "to_chitanda/kansuuji"
require "to_chitanda/chitanda"

class Integer
  def to_chitanda
    ToChitanda::Chitanda.chitanda(self)
  end
end
