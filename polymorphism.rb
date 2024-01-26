class Bank_account
  attr_accessor :balance

  def initialize(balance)
    @balance = balance
  end

  def transaction(transaction_type, amount)
    transaction_type.perform_transaction(self, amount)
  end
end


class Withdraw
  def perform_transaction(account, amount)
    account.balance -= amount
    puts "Withdrawal of $#{amount} processed. New balance: $#{account.balance}"
  end
end

class Deposit
  def perform_transaction(account, amount)
    account.balance += amount
    puts "Deposit of $#{amount} processed. New balance: $#{account.balance}"
  end
end


account = Bank_account.new(1000)

withdrawal = Withdraw.new
deposit = Deposit.new

account.transaction(withdrawal, 200)
account.transaction(deposit, 500)
