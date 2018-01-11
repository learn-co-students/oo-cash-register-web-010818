require 'pry'

class CashRegister

  attr_accessor :total, :discount, :title, :quantity, :items, :price

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @title = title
    @quantity = quantity
    @price = price
    @total += price * quantity

    quantity.times {@items << title}

  end

  def apply_discount
    if discount
      self.total = self.total * (1 -(0.01*discount))
      "After the discount, the total comes to $#{self.total.round}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction

    @total -= self.price

  end









end
