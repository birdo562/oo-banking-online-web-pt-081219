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
  def display_balance
    "Your balance is $#{@balance}."
  end
  def valid?
    if @status == "open" && @balance > 1000
    true
  else false
  end
end
end
