class CashRegister
  attr_accessor :total,:discount,:items,:last_transaction
  def initialize(discount=0)
    @total=0
    @discount=discount
    @items=[]
  end

  def add_item(title,price,quantity=1)
    @last_transaction=price*quantity
    quantity.times do
      items<<title
    end
    @total=total+last_transaction
    @total
  end

  def apply_discount
    if discount>0
      self.total=total*(100-discount)/100
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total=total-last_transaction
  end




end
