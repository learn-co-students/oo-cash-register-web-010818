class CashRegister
  attr_accessor   :total, :discount

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @item = []
  end
  # def total
  #   @total
  # end
  def add_item(title, price, quantity = 1)
  quantity.times {@item << title}
    @total += price*quantity
  end
  def apply_discount
  if !discount
    "There is no discount to apply."
  else
    @total =   (@total - (200))
  "After the discount, the total comes to $#{@total}."
  end
  end

  def items
    @item
  end

  def void_last_transaction
    @total = 0 
  end




end
