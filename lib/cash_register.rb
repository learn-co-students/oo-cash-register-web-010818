class CashRegister
attr_accessor :discount, :total, :title
@@all = []

def initialize(discount = nil)
  @items = []
  @total = 0
  @discount = discount
end

def total
@total
end

def add_item(title, price, quantity = 1)
  increase = price * quantity
  @@all << increase
  self.total += increase
  num = quantity
  quantity.times do
    @items << title
  end
end

def apply_discount
  if discount
  minus = (discount/100.to_f) * self.total
  sale = self.total -= minus.to_int
"After the discount, the total comes to $#{sale}."
else
  "There is no discount to apply."
end
end

def items
  @items.map do |i|
    i
  end
end

def void_last_transaction
void = @@all.last
self.total -= void
end



end
