class CashRegister
  attr_accessor :total, :discount, :last_transcation

  ITEMS = []

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    ITEMS.clear
  end

  def add_item(item, price, quantity=1)
    self.last_transcation = price * quantity
    self.total += self.last_transcation
    i = 0
    while i < quantity
      ITEMS << item
      i += 1
    end
  end

  def apply_discount
    if @discount != 0
      @total *= 1.00 - 0.01*self.discount
      "After the discount, the total comes to $#{total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    ITEMS
  end

  def void_last_transaction
    self.total -= self.last_transcation
  end


end
