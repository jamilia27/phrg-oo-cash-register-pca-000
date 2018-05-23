require 'pry'

class CashRegister
  attr_accessor :items, :total, :discount, :prices

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      @items << title
    end
      @prices << price
  end

  def void_last_transaction
    @total -= @prices[-1]
  end

  def apply_discount
    if @discount != 0
     @total = @total.to_f * (1.0 - (@discount.to_f/100))
     "After the discount, the total comes to $#{@total.to_i}."
   else
    "There is no discount to apply."


      # if there is a discount, apply discount to total
      # subtract discount from total
      # return updated total
   end
 end

end
