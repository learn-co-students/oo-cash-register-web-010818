class CashRegister

  attr_accessor :total, :discount, :items, :last_transation

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @last_transation = []
  end

  def add_item(title, price, quantity=1)
    quantity.times do
      @items << title
      @total += price
    end
    @last_transation[0] = title
    @last_transation[1] = price
    @last_transation[2] = quantity
    @total
  end

  def apply_discount
    if @discount > 0
      @total = (@total * (1- @discount/100.00)).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @last_transation[2].times do
      @items.pop
      @total -= @last_transation[1]
    end
  end

end
