require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items
  def initialize(discount=0)
    @total=0
    @discount = discount
    @items=[]
  end
  
  def add_item(item, price, quantity=1)
    if price > 0
      @total += (price * quantity)
      quantity.times do
      @items << item
      @total
    end
  end
  
  def apply_discount
   if discount!=0
     @total = @total / 100 * (100 - @discount)
    "After the discount, the total comes to $#{@total}."
  else
    "There is no discount to apply."
  end
  end
  
  def items
  @items
  end

end
