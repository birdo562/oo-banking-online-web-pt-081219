class BankAccount
  @@all = []
  attr_reader :name
  attr_accessor :balance, :status
  def initialize(name)
    @name= name
    @status = "open"
    @balance = 1000
  end
  def deposit(amount)
    @balance += amount
  end
    
end
