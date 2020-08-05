class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  
    end
    
    def add_item(title, price, quantity = 1)
      self.total += amount * quantity
    quantity.times do
      items << title
    end
    self.last_transaction = amount * quantity
  end
  
  def apply_discount
    if @discount != 0 
    @total = (total * ((100.0 - @discount.to_f)/100)).to_i
    return "After the discount, the total comes to $#{total}."
  else 
    return "There is no discount to apply."
  end
end
 
  def void_last_transaction
    self.total =  self.total - self.last_transaction
   
  end
end
