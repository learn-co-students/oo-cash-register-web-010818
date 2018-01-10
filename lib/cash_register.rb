require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items, :transaction, :transaction_total

  def initialize(empl_disc=0)
    @total = 0
    @discount = empl_disc
    @items = []
    @last_transaction = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    @transaction_total = price * quantity
    @total += @transaction_total
    transaction = []
    quantity.times { transaction << title }
    @transaction = transaction
    @items.concat(transaction)

  end

  def apply_discount
    # Turn discount into decimal for easy multiplication
    if @discount > 0
      # Example: discount of 20 should result in multiplying the total by 0.8
      @discount = (100.00 - @discount) / 100.00

      @total = (@total * discount)
      "After the discount, the total comes to $#{@total.round}."
    else @discount == 0
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @transaction.each do |item|
      @items.delete(item)
    end
    @total -= @transaction_total
  end
end
#binding.pry
#Pry.start
