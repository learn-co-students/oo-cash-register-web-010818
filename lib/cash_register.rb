require 'pry'

class CashRegister
  attr_accessor :total, :all, :discount, :item, :price, :quantity

  def initialize(discount=nil)
    @total = 0
    @discount = discount

    @all = []
  end

  def add_item(item, price, quantity=1)
    self.item = item
    self.price = price
    self.quantity = quantity

    self.total += price * quantity
    quantity.times do
      self.all << item
    end
  end

  def apply_discount
    if self.discount
      self.total -= self.total * self.discount/100
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    self.all
  end

  def void_last_transaction
    self.total -= self.price * self.quantity
    self.quantity.times do
      self.all.pop
    end
  end
end
