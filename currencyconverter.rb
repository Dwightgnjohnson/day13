class CurrencyConverter
  attr_accessor :amount, :dollars
  def initialize(amount, dollars, x)
    @amount = amount
    @dollars = dollars
    @@exchange = {
    :euro => 0.79,
    :pound => 0.62,
    :yen => 108.26,
    :gold => 0.000820338,
    }
  end

  def euro
    @amount * @@exchange[:euro]
  end
  def pound
    @amount * @@exchange[:pound]
  end
  def yen
    @amount * @@exchange[:yen]
  end
  def gold
    @amount * @@exchange[:gold]
  end

end

euro1 = CurrencyConverter.new(15, :dollar, :euro)

p euro1.euro
p euro1.pound
p euro1.yen
p euro1.gold
