class CashRegister
  attr_accessor :total, :discount, :transactions

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @@all = []
    @@transactions = []
  end

  def add_item(item, price, quantity=1)
    @total += (price * quantity)
    quantity.times do
    @@all << item
    end
    item_total = (price * quantity)
    @@transactions << item_total
  end

  def apply_discount
    @total = (total - total * @discount / 100.00).round
    if @discount != 0
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @@all
  end

  def void_last_transaction
    @total -= @@transactions[-1]
    @@transactions.pop
    @total
  end






end
