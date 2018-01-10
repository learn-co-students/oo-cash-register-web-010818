require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items
  attr_reader :last_price_added

  def initialize(discount=0)
    @total = 0.00
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    @last_price_added = price * quantity
    quantity.times do
      items << item
    end
    @total += price * quantity
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total * ((100.00 - @discount)/100.00)
      # @total.to_i
      "After the discount, the total comes to $#{@total.to_i}."
      # binding.pry
    end
  end

  def void_last_transaction
    @total -= @last_price_added
  end


  # binding.pry

end
