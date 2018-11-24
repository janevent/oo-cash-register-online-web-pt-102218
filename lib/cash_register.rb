class CashRegister
  
  attr_accessor :total, :title, :price, :item, :employee_discount, :last_transaction
  
  def initialize(employee_discount = 0)
    @total = 0 
    @employee_discount = employee_discount
    @items = []
  end
    @last_transaction
  def total 
    @total
  end
  
  def add_item(title, price, quantity = 1)
    p = price * quantity 
    @total = @total + p
    quantity.times do
      @items << title
      @last_transaction = p
    end
  end
  
  def items 
    @items
  end
  
  def discount 
    @employee_discount 
  end
  
  def apply_discount
    discounted_amount = @total * (@employee_discount/100)
    self.total = @total - discounted_amount
    self.total
    @employee_discount > 0 ? "After the discount, the total comes to $#{@total.to_i}." : "There is no discount to apply."
  end
  
  def void_last_transaction 
    @total = @total - @last_transaction 
    @items.pop
  end
end
