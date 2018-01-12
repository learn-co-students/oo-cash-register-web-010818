require 'pry'

class CashRegister

  attr_accessor :total, :discount, :quantity, :item
  attr_reader :price

#init new shopping cart.
#shopping cart total = 0 on init b/c when u first get a cart it is empty
#set discount var = parameter
#update total w/ discount if discount is available
#each new cash register opens its own Arr to count items (itemsArr)
    def initialize(discount=0)
      @total = 0
      @discount = discount
      @@itemsArr = []
    end


#self.total calls CashRegister.total
#self  here referes to the instance of a new CashRegister
  def add_item(item,price,quantity=1)
      @item = item
      quantity.times do @@itemsArr<<item
      end
      @price = price
      @quantity = quantity
      self.total =total + (price * quantity)
  end

  def apply_discount
      self.total = self.total-(self.total * (@discount.to_f)/100)

    if  discount > 0
       "After the discount, the total comes to $#{self.total.to_i}."

    else
       "There is no discount to apply."
    end
  end

 def items
   @@itemsArr
 end

  def void_last_transaction
    self.total = self.total-self.price
  end

end
