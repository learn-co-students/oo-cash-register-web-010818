class CashRegister

  attr_accessor :total, :discount, :last_transaction_amount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
    quantity.times do
      @items << title
    end
    @last_transaction_amount = price * quantity
  end

  def apply_discount
    if @discount != 0
      @total -= total * @discount/100
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction_amount
  end
end
