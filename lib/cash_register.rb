class CashRegister
  
  attr_accessor :total, :discount, :items, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  
    end
    
    def add_item(title, price, quantity = 1)
      if quantity > 1
        i = 0 
        while i < quantity
        @items << title
        i+=1
      end
    else 
      @items << title
    end
    @total = @last_transaction = price * quantity
    # @total += price*quantity
    # @last_transaction = @total
    # @total
  end
  
  def apply_discount
    if @discount > 0 
    @total = (total * ((100.0 - @discount.to_f)/100)).to_i
    
    return "After the discount, the total comes to $#{total.to_i}."
  else 
    return "There is no discount to apply."
  end
end
 
  def void_last_transaction
    self.total =  self.total - self.last_transaction
   
  end
end
