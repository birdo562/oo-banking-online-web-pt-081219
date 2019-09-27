class Transfer
  @@all = []
  attr_accessor :amount, :sender, :receiver 
  attr_reader :status
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
   end
   def valid?
     
end
