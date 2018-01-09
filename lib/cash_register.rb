require "pry"

class CashRegister

  attr_accessor :total, :discount, :cart, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
    @last_transaction = 0
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    @last_transaction = price * quantity
    until quantity <= 0
      @cart << item
      quantity -= 1
    end
  end

  def apply_discount
    if @discount <= 0
      "There is no discount to apply."
    elsif @discount > 0
      @total -= (@discount.to_f/100.00) * @total.to_f
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @cart
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
