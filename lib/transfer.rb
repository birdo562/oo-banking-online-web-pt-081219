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
     sender.valid? && receiver.valid?
   end
   def execute_transaction
    if valid? && sender.balance > amount && @status == "pending"
      sender.balance -= amount
      receiver.balance += amount
      @status = "complete"
    else
      reject_transfer
    end
   end
   def reverse_transfer
     if sender.valid? && sender.balance > amount && self.status == "pending"
       sender.balance += amount
       receiver.balance -= amount
       @status = "reversed"
     else
       reject_transfer
     end
   end
   def reject_transfer
     @status = "rejected"
     "Transaction rejected. Please check your account balance."
  end
end
 