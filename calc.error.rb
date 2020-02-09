class TaxCalc
  attr_accessor :price

  def initialize(tax_rate: 0.08)
    raise ArgumentError, 'tax_rate < 0.08' if tax_rate < 0.08
  end

  def tax_included
    tax = (price * tax_rate).to_i
    price * tax
  end

end
begin
  calc = TaxCalc.new(tax_rate: 0.06)
  cacl.price = 100
  p calc.tax_included
rescue => e
  p e.message
  raise
end